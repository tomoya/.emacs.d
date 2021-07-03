;;; init.el --- Initialization file for Emacs
;;; Commentary: Emacs Startup File --- initialization for Emacs

(require 'cl-lib)
(setq default-directory "~/")

(add-to-list 'load-path (locate-user-emacs-file "nano"))

;; Set PATH env and exec-path from $PATH
(setenv "PATH" (shell-command-to-string "echo $PATH"))
(cl-loop for x
         in (reverse (split-string (substring (shell-command-to-string "echo $PATH") 0 -1) ":"))
         do (add-to-list 'exec-path x))

;; Used by custom-set-variables
(require 'orderless nil t)

;; My function
(defun my-get-cache-dir ()
  "Get the cache directory."
  (or (when-let (xdg-cache-home-dir (getenv "XDG_CACHE_HOME"))
        (concat xdg-cache-home-dir "/emacs"))
      (locate-user-emacs-file ".cache")))

;; no-littering
(defvar no-littering-etc-directory (expand-file-name "config/" user-emacs-directory))
(defvar no-littering-var-directory (expand-file-name "var/" user-emacs-directory))
(require 'no-littering)
(require 'recentf)
(add-to-list 'recentf-exclude no-littering-var-directory)
(add-to-list 'recentf-exclude no-littering-etc-directory)
(setq auto-save-file-name-transforms `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))

;; nano
(defvar nano-font-family-monospaced "Fira Code")
;; (require 'nano-layout)
;; extract nano-layout needed to improve fperformance or initial display
(window-divider-mode 1)
(setq widget-image-enable nil)

(defface fallback '((t :family "Fira Code"
                       :inherit 'nano-face-faded)) "Fallback")
(set-display-table-slot standard-display-table 'truncation
                        (make-glyph-code ?… 'fallback))
(set-display-table-slot standard-display-table 'wrap
                        (make-glyph-code ?↩ 'fallback))
(require 'nano-theme-dark)
(require 'nano-faces)
(nano-faces)
(require 'nano-theme)
(nano-theme)
;; (require 'nano-session)
(require 'nano-modeline)
(require 'nano-bindings)
(let ((inhibit-message t))
  (message "Welcome to GNU Emacs / N Λ N O edition")
  (message (format "Initialization time: %s" (emacs-init-time))))
;; Splash and help (optional)
(add-to-list 'command-switch-alist '("-no-splash" . (lambda (args))))
(unless (member "-no-splash" command-line-args)
  (require 'nano-help)
  (require 'nano-splash))
;; pickup fron nano-default
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse
      uniquify-separator " • "
      uniquify-after-kill-buffer-p t
      uniquify-ignore-buffers-re "^\\*")
;; pickup from nano-sesion
(setq backup-directory-alist `((".*" . ,(expand-file-name "backups" (my-get-cache-dir))))
      make-backup-files t     ; backup of a file the first time it is saved.
      backup-by-copying t     ; don't clobber symlinks
      version-control t       ; version numbers for backup files
      delete-old-versions t   ; delete excess backup files silently
      kept-old-versions 6     ; oldest versions to keep when a new numbered
                              ; backup is made (default: 2)
      kept-new-versions 9     ; newest versions to keep when a new numbered
                              ; backup is made (default: 2)
      auto-save-default t     ; auto-save every buffer that visits a file
      auto-save-timeout 20    ; number of seconds idle time before auto-save
                              ; (default: 30)
      auto-save-interval 200) ; number of keystrokes between auto-saves
                              ; (default: 300)

;; custom-file
(setq custom-file (no-littering-expand-etc-file-name "custom.el"))
(load custom-file)

;; prefer local variables to major-mode hook
(defun run-local-vars-mode-hook ()
  "Run `major-mode' hook after the local variables have been processed."
  (run-hooks (intern (concat (symbol-name major-mode) "-local-vars-hook"))))
(add-hook 'hack-local-variables-hook 'run-local-vars-mode-hook)

;; modeline
(with-eval-after-load 'flycheck
  (defun my-flycheck-mode-line-status-text (&optional status)
    (let ((text (pcase (or status flycheck-last-status-change)
                  (`not-checked "😴")
                  (`no-checker "😎")
                  (`running "🤔")
                  (`errored "😭")
                  (`finished
                   (let-alist (flycheck-count-errors flycheck-current-errors)
                     (if (or .error .warning)
                         (concat
                          "😰"
                          (propertize (format "%s" (or .error 0)) 'face '(:foreground "#ec5aaa"))
                          " 😥"
                          (propertize (format "%s" (or .warning 0)) 'face '(:foreground "#fad900"))
                          )
                       "🤩")))
                  (`interrupted "🤯")
                  (`suspicious "🙃"))))
      text))
  (setq flycheck-mode-line '(:eval (my-flycheck-mode-line-status-text)))
  (flycheck-package-setup))

;; mini-modeline formats
(with-eval-after-load 'vc-git
  (defun my-mode-line-vc ()
    (let ((file (buffer-file-name)))
      (if (or (null file) (null vc-mode)) nil
        (let* ((branch
                (let ((backend (vc-backend file)))
                  (substring vc-mode (+ (if (eq backend 'Hg) 2 3) 2))))
               (diff-count (vc-git--run-command-string file "diff" "--numstat" "--"))
               (diff-count-text
                (if (and diff-count
                         (string-match "^\\([0-9]+\\)\t\\([0-9]+\\)\t" diff-count))
                    (concat
                     (propertize (format "+%s" (match-string 1 diff-count)) 'face '(:foreground "#58e06f"))
                     (propertize (format "-%s" (match-string 2 diff-count)) 'face '(:foreground "#f56bb7")))
                  "")))
          (format "%s %s %s"
                  (all-the-icons-octicon "git-branch" :v-adjust 0.1)
                  (truncate-string-to-width branch 21 nil nil "…")
                  diff-count-text))))))

(defun my-mode-line-region-info ()
  (when mark-active
    (let* ((beg (region-beginning))
           (end (region-end))
           (lines (count-lines beg end))
           (words (count-words beg end))
           (chars (abs (- beg end))))
      (propertize
       (format "%s行/%s語/%s字 " lines words chars)
       'face '(:foreground "#9090fa")))))

(defun my-mode-line-buffer-file-name ()
  (let ((file (buffer-file-name)))
    (if (buffer-modified-p)
         (propertize (concat file "*") 'face '(:foreground "#f56bb7"))
      file)))

(setq-default mini-modeline-l-format '((:eval (my-mode-line-buffer-file-name))))
(setq-default mini-modeline-r-format '("%e"
                                       (:eval (my-mode-line-region-info))
                                       mode-line-mule-info
                                       "%I  %p %n "
                                       (:eval (my-mode-line-vc))
                                       " "
                                       flycheck-mode-line))

;; tree-sitter
(require 'tree-sitter-langs)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; markdown-preview-mode
(setq markdown-preview-stylesheets (list "https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/2.10.0/github-markdown.min.css"))

;; font
;; フォントの確認
;; (font-family-list)
;; (x-list-fonts "BIZ UDGothic")
;; set-fontset-font を early-init.el で実行するとEmacsが死ぬ
;; 日本語フォントをMotoyaLCedar (Kosugi) に
(when window-system
  (set-fontset-font
   nil 'japanese-jisx0208
   (font-spec :family "BIZ UDGothic"))

  ;; emoji 😋
  (set-fontset-font "fontset-default" 'unicode "Apple Color Emoji" nil 'prepend)
  ;; ひらがなとカタカナをNoto Sans CJK JPに
  ;; U+3000-303F  CJKの記号および句読点
  ;; U+3040-309F  ひらがな
  ;; U+30A0-30FF  カタカナ
  ;; (set-fontset-font
  ;;  nil '(#x3040 . #x30ff)
  ;;  (font-spec :family "Noto Sans CJK JP"))
  ;; fira-code-mode
  (when (require 'fira-code-mode nil t)
    (add-hook 'prog-mode-hook 'fira-code-mode)))

(defvar ignore-buffer-regex "^\\(\*\\|magit.?+:\\)"
  "Ignore switch-code-buffer() regex.")

(defvar whitelist-buffer-regex "^\*scratch\*"
  "Do not ignore switch-code-buffer() regex.")

(defun ignore-buffer-p (buffer)
  "Return ignore BUFFER predicate."
  (and (not (string-match-p whitelist-buffer-regex buffer))
       (string-match-p ignore-buffer-regex buffer)))

(defun switch-code-buffer (&optional previous)
  "Switch buffer ignore no code buffers.
if you want to switch to previous buffer, set first argument non-nil."
  (interactive)
  (let* ((previous (or previous nil))
         (bread-crumb (buffer-name)))
    (message "%s" previous)
    (if previous (previous-buffer)
      (next-buffer))
    (while
        (and
         (ignore-buffer-p (buffer-name))
         (not (equal bread-crumb (buffer-name))))
      (if previous
          (previous-buffer)
        (next-buffer)))))

(defun next-code-buffer ()
  "Switch next buffer ignore no code buffer."
  (interactive)
  (switch-code-buffer))

(defun previous-code-buffer ()
  "Switch previous buffer ignore no code buffer."
  (interactive)
  (switch-code-buffer t))

(defun checkout-head-revision ()
  "Checkout HEAD revision on current buffer."
  (interactive)
  (or (and buffer-file-name
           (vc-git-checkout buffer-file-name "HEAD")
           (message "File reverted: %s" buffer-file-name))
      (message "Can not revert. Because this buffer is not a file.")))

;; smarter-move-beginning-of-line
;; https://emacsredux.com/blog/2013/05/22/smarter-navigation-to-the-beginning-of-a-line/
(defun smarter-move-beginning-of-line (arg)
  "Move point back to indentation of beginning of line.

Move point to the first non-whitespace character on this line.
If point is already there, move to the beginning of the line.
Effectively toggle between the first non-whitespace character and
the beginning of the line.

If ARG is not nil or 1, move forward ARG - 1 lines first.  If
point reaches the beginning or end of the buffer, stop there."
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

;; Setup windmove keybindings
(windmove-default-keybindings 'super)
(windmove-swap-states-default-keybindings)

;; Remove trailing whitespace when save file
(defun my-before-save-hooks ()
  "My before save hooks."
  (delete-trailing-whitespace))

(add-hook 'before-save-hook 'my-before-save-hooks)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

;; auto fix
(add-hook 'auto-fix-mode-hook
          (lambda () (add-hook 'before-save-hook #'auto-fix-before-save)))

(add-hook 'typescript-mode-hook #'auto-fix-mode)
(add-hook 'js-mode-hook #'auto-fix-mode)
(add-hook 'web-mode-hook #'auto-fix-mode)

;; ruby-mode
(defun setup-auto-fix-rubocop ()
  (setq-local auto-fix-command "rubocop")
  (setq-local auto-fix-option "-a")
  (auto-fix-mode +1))

(add-hook 'ruby-mode-hook #'setup-auto-fix-rubocop)

;; JavaScript
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; TypeScript
(flycheck-add-mode 'javascript-eslint 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescript-mode))

(defun my-use-local-lint ()
  "Use local lint if exist it."
  (let* ((root (locate-dominating-file
                (or buffer-file-name default-directory) "node_modules"))
         (eslint (and root (expand-file-name "node_modules/.bin/eslint" root)))
         (tslint (and root (expand-file-name "node_modules/.bin/tslint" root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint)
      (setq-local auto-fix-command eslint))
    (when (and tslint (file-executable-p tslint))
      (setq-local flycheck-typescript-tslint-executable tslint)
      (setq-local auto-fix-command tslint))))

(add-hook 'flycheck-mode-hook #'my-use-local-lint)

;; lsp-mode
(add-hook 'web-mode-hook #'lsp)
(add-hook 'typescript-mode-local-vars-hook #'lsp)
(add-hook 'terraform-mode-hook #'lsp)
(add-hook 'yaml-mode-hook #'lsp)
(add-hook 'json-mode-hook #'lsp)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

;; company
;; Show first candidate inline
;; https://github.com/company-mode/company-mode/wiki/Switching-from-AC#setting-up-similar-popup-behavior
(defun my-company-visible-and-explicit-action-p ()
  "No document."
  (and (company-tooltip-visible-p)
       (company-explicit-action-p)))
(setq company-require-match nil)
(setq company-auto-commit #'my-company-visible-and-explicit-action-p)
(setq company-frontends '(company-echo-metadata-frontend
                          company-pseudo-tooltip-unless-just-one-frontend-with-delay
                          company-preview-frontend))
(push 'company-emoji company-backends)
(push 'company-lsp company-backends)
(push 'company-tabnine company-backends)
(add-hook 'company-mode-hook 'company-box-mode)

;; undo-tree
(global-undo-tree-mode)

;; emacs-revision
(defun emacs-revision (&optional here)
  "Return string the version of Emacs Git Revision that is running.
If optional argument HERE is non-nil, insert string at point."
  (interactive "P")
  (if here
      (insert emacs-repository-version)
    (if (called-interactively-p 'interactive)
        (message "%s" emacs-repository-version)
      emacs-repository-version)))

;; reopen-killed-file
(defvar killed-file-list nil
  "List of recently killed files.")

(defun add-file-to-killed-file-list ()
  "Add file to killed-file-list.
If buffer is associated with a file name, add that file to the
`killed-file-list' when killing the buffer."
  (when buffer-file-name
    (push buffer-file-name killed-file-list)))

(add-hook 'kill-buffer-hook #'add-file-to-killed-file-list)

(defun reopen-killed-file ()
  "Reopen the most recently killed file, if one exists."
  (interactive)
  (when killed-file-list
    (find-file (pop killed-file-list))))

(defun after-init-hook ()
  (neotree-toggle)
  (vertico-mode)
  (mini-modeline-mode)
  (marginalia-mode))

(add-hook 'after-init-hook #'after-init-hook)

;; vertico
(advice-add #'vertico--setup :after
            (lambda (&rest _)
              (setq-local completion-auto-help nil
                          completion-show-inline-help nil)))

;; frame-tabs
(defun my-frame-tabs-default-filter (buffer _frame)
  "Default filter function for frame tabs."
  (let ((name (buffer-name buffer)))
    (and (not (eq (aref name 0) ?\s))
         (not (ignore-buffer-p name))
         name)))

;; open finder
(defun open-finder ()
  "Open DIR from finder."
  (interactive)
  (shell-command (concat "open " default-directory)))

;; pdf-view-mode
(autoload 'pdf-view-mode
  "pdf-view" "View PDF file in Emacs" t)
(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))


;; darkroom
(defun darkroom-mode-hooks ()
  (when (neo-global--window-exists-p)
    (neotree-hide)))
(add-hook 'darkroom-mode-hook #'darkroom-mode-hooks)

;; consult
(with-eval-after-load 'consult
  (with-eval-after-load 'embark
    (require 'embark-consult))

  (setq register-preview-function #'consult-register-format)
  (advice-add #'register-preview :override #'consult-register-window)
  (setq consult-project-root-function
        (lambda ()
          (when-let (project (project-current))
            (car (project-roots project)))))
  (define-key consult-narrow-map (vconcat consult-narrow-key "?") #'consult-narrow-help)

  (defun my-consult-line (&optional at-point)
    "Consult-line uses things-at-point if set C-u prefix."
    (interactive "P")
    (if at-point
        (consult-line (thing-at-point 'symbol))
      (consult-line)))

  (defalias 'goto-line 'consult-goto-line)
  (with-eval-after-load 'consult-flycheck
    (global-set-key [remap flycheck-list-errors] 'consult-flycheck)))

;; Key bindings
(global-set-key (kbd "C-h b") 'embark-bindings)
(global-set-key (kbd "s-e") 'embark-act)
(global-set-key (kbd "C-a") 'smarter-move-beginning-of-line)
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)
(global-set-key (kbd "s-t") 'consult-buffer)
(global-set-key (kbd "C-s") 'my-consult-line)
(global-set-key (kbd "s-r") 'consult-recent-file)
(global-set-key (kbd "C-]") 'consult-ghq-find)
(global-set-key (kbd "C-}") 'consult-ghq-grep)
(global-set-key (kbd "M-g o") 'consult-outline)
(global-set-key (kbd "M-g s") 'magit-status)
(global-set-key (kbd "M-g a") 'magit-stage-file)
(global-set-key (kbd "M-g c") 'magit-commit-create)
(global-set-key (kbd "M-g d") 'magit-diff-buffer-file)
(global-set-key (kbd "M-g p") 'diff-hl-previous-hunk)
(global-set-key (kbd "M-g n") 'diff-hl-next-hunk)
(global-set-key (kbd "C-c C-r") 'quickrun)
(global-set-key (kbd "M-s-z") 'checkout-head-revision)
(global-set-key (kbd "C-x C-j") 'skk-mode)
(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "s-T") 'reopen-killed-file)
(global-set-key (kbd "s-o") 'open-finder)
(global-set-key (kbd "<M-s-right>") 'next-code-buffer)
(global-set-key (kbd "<M-s-left>") 'previous-code-buffer)
(global-set-key (kbd "C-/") 'undo-tree-undo)
(global-set-key (kbd "C-'") 'undo-tree-redo)
(global-set-key (kbd "<s-return>") 'cua-rectangle-mark-mode)
(global-set-key (kbd "s-f") 'affe-grep)
(global-set-key (kbd "s-F") 'affe-find)
(global-set-key (kbd "s-\\") 'neotree-toggle)
(global-set-key (kbd "M-g l") 'git-link)
(global-set-key (kbd "s-c") 'copy-as-format-github)
(global-set-key (kbd "C-c C-u") 'string-inflection-all-cycle)
(global-set-key (kbd "M-A") 'marginalia-cycle)
(define-key minibuffer-local-map (kbd "M-A") 'marginalia-cycle)
(define-key company-active-map [tab] 'company-complete-selection)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(with-eval-after-load 'vertico
  (define-key vertico-map (kbd "C-r") 'vertico-previous)
  (define-key vertico-map (kbd "C-s") 'vertico-next))

;; Command protection
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'list-timers 'disabled nil)
(put 'list-threads 'disabled nil)

;;; init.el ends here
