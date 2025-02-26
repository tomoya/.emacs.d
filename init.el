;;; init.el --- Initialization file for Emacs
;;; Commentary: Emacs Startup File --- initialization for Emacs

(require 'cl-lib)
(setq default-directory "~/")

;; Set PATH env and exec-path from $PATH
(setenv "PATH" (shell-command-to-string "echo $PATH"))
(cl-loop for x
         in (reverse (split-string (substring (shell-command-to-string "echo $PATH") 0 -1) ":"))
         do (add-to-list 'exec-path x))

;; straight
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package
  '(nano-emacs :type git :host github :repo "rougier/nano-emacs"
               :fork (:host github
                    :repo "wakatara/nano-emacs")))
;; (straight-use-package '(nano :type git :host github :repo "rougier/nano-emacs"))
(straight-use-package 'orderless)
(straight-use-package 'no-littering)
(straight-use-package 'libgit)
(straight-use-package 'ssh-config-mode)
(straight-use-package 'git-modes)
(straight-use-package 'rainbow-mode)
(straight-use-package 'mini-modeline)
(straight-use-package 'consult-flycheck)
(straight-use-package 'psession)
(straight-use-package 'consult)
(straight-use-package 'consult-ghq)
(straight-use-package 'consult-lsp)
(straight-use-package 'embark-consult)
(straight-use-package 'vertico)
(straight-use-package 'marginalia)
(straight-use-package 'affe)
(straight-use-package 'elisp-benchmarks)
(straight-use-package 'vterm)
(straight-use-package 'tree-sitter-langs)
(straight-use-package '(ts-fold :type git :host github :repo "emacs-tree-sitter/ts-fold"))
(straight-use-package 'forge)
(straight-use-package 'github-review)
(straight-use-package 'string-inflection)
(straight-use-package 'exec-path-from-shell)
(straight-use-package 'projectile-ripgrep)
(straight-use-package 'rg)
(straight-use-package 'json-mode)
(straight-use-package 'terraform-mode)
(straight-use-package 'dockerfile-mode)
(straight-use-package 'copy-as-format)
(straight-use-package 'git-link)
(straight-use-package 'csv-mode)
(straight-use-package 'quickrun)
(straight-use-package 'zone-nyan)
(straight-use-package 'darkroom)
(straight-use-package 'company-tabnine)
(straight-use-package 'yaml-mode)
(straight-use-package 'php-mode)
(straight-use-package 'flycheck-posframe)
(straight-use-package 'rspec-mode)
(straight-use-package 'fira-code-mode)
(straight-use-package 'pdf-tools)
(straight-use-package 'company-box)
(straight-use-package 'frame-tabs)
(straight-use-package 'all-the-icons)
(straight-use-package 'neotree)
(straight-use-package 'flycheck-package)
(straight-use-package 'easy-hugo)
(straight-use-package 'htmlize)
(straight-use-package 'markdown-preview-mode)
(straight-use-package '(auto-fix :type git :host github :repo "tomoya/auto-fix.el"))
(straight-use-package 'company-emoji)
(straight-use-package 'lsp-ui)
(straight-use-package 'lsp-mode)
(straight-use-package 'web-mode)
(straight-use-package 'direnv)
(straight-use-package 'undo-tree)
(straight-use-package 'markdown-mode)
(straight-use-package 'smartparens)
(straight-use-package 'typescript-mode)
(straight-use-package 'ddskk)
(straight-use-package 'company-flx)
(straight-use-package 'company)
(straight-use-package 'projectile)
(straight-use-package 'magit)
(straight-use-package 'diff-hl)
(straight-use-package 'yasnippet)
(straight-use-package 'json-par)
(straight-use-package '(emacs-prisma-mode :type git :host github :repo "pimeys/emacs-prisma-mode"))
(straight-use-package '(lsp-prisma :type git :host github :repo "pimeys/emacs-prisma-mode"))
(straight-use-package 'lua-mode)
(straight-use-package 'ellama)
(straight-use-package 'elisa)
(straight-use-package 'mistty)
(straight-use-package 'mermaid-mode)
(straight-use-package 'svelte-mode)
(straight-use-package 'markdown-toc)

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
;; extract nano-layout needed to improve fperformance or initial display
(window-divider-mode 1)
(setq widget-image-enable nil)

(defface fallback '((t :family "Fira Code"
                       :inherit 'nano-face-faded)) "Fallback")
(set-display-table-slot standard-display-table 'truncation
                        (make-glyph-code ?… 'fallback))
(set-display-table-slot standard-display-table 'wrap
                        (make-glyph-code ?↩ 'fallback))
;; Copy standard-display-table before global-whitespace-mode enabled
(setq-default buffer-display-table standard-display-table)

(require 'nano-theme-dark)
(require 'nano-faces)
(nano-faces)
(require 'nano-theme)
(nano-theme)
;; (require 'nano-session)
;; (require 'nano-modeline)
;; (require 'nano-bindings)
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
                          "😥"
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
       (format " %s行/%s語/%s字" lines words chars)
       'face '(:foreground "#9090fa" :height 1)))))

(defun my-mode-line-buffer-file-name ()
  (let ((file (or (buffer-file-name) "")))
    (if (buffer-modified-p)
        (propertize file 'face '(:foreground "Magenta"))
      file)))

(setq-default mini-modeline-l-format '((:eval (my-mode-line-buffer-file-name))))
(setq-default mini-modeline-r-format '("%e"
                                       mode-line-mule-info
                                       "%I  %p %n "
                                       (:eval (my-mode-line-vc))
                                       " "
                                       flycheck-mode-line
                                       (:eval (my-mode-line-region-info))))

;; tree-sitter
(require 'tree-sitter-langs)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; ts-fold-mode
;; (global-ts-fold-indicators-mode 1)
(add-hook 'tree-sitter-after-on-hook #'ts-fold-indicators-mode)
(setopt
 ts-fold-summary-max-length 80
 ts-fold-summary-exceeded-string "✂️✂️✂️"
 ts-fold-summary-format "【Summary】%s…")

;; markdown-preview-mode
(setq markdown-preview-stylesheets (list "https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/2.10.0/github-markdown.min.css"))

;; font
;; フォントの確認
;; (font-family-list)
;; (x-list-fonts "Source Han Code JP")
;; (x-list-fonts "Adobe Clean Han")
;; AsciiフォントをFira Codeに
(set-face-attribute 'default nil
                    :family "Fira Code"
                    :height 130)

;; CJKフォントの横幅を調整
;; 12121212121212121212
;; あいうえおかきくけこ
;; (add-to-list 'face-font-rescale-alist '(".*Noto.*" . 1.2))
;; (add-to-list 'face-font-rescale-alist '(".*MotoyaLCedar.*" . 1.2))
;; (add-to-list 'face-font-rescale-alist '(".*BIZ UD.*" . 1.2))
(add-to-list 'face-font-rescale-alist '(".*Source Han Code JP.*" . 1.1))
(add-to-list 'face-font-rescale-alist '(".*Adobe Clean Han.*" . 1.1))

;; all-the-iconsの横幅を調整
(add-to-list 'face-font-rescale-alist '(".*all-the-icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*file-icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*FontAwesome.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*octicons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Weather Icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Material Icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Apple Color Emoji.*" . 0.9))

;; set-fontset-font を early-init.el で実行するとEmacsが死ぬ
(when window-system
  (set-fontset-font
   nil 'japanese-jisx0208
   (font-spec :family "Adobe Clean Han" :weight 'light))

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
    (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
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
(add-hook 'svelte-mode-hook #'lsp)

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
;; (push 'company-tabnine company-backends)
(add-hook 'company-mode-hook 'company-box-mode)

;; undo-tree
(global-undo-tree-mode)
(setopt undo-tree-history-directory-alist `((".*" . ,(expand-file-name "undo-tree-history" (my-get-cache-dir))))
        undo-tree-visualizer-diff t
        undo-tree-visualizer-timestamps t)

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
  (shell-command (format "open '%s'" default-directory)))

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
    (global-set-key [remap flycheck-list-errors] 'consult-flycheck))
  (setopt affe-count 70)
  (setopt affe-grep-command "rg --null --color=never --max-columns=1000 --no-heading --line-number --hidden -v  --glob=!**/.git/** ^$")
  (setopt affe-find-command "fd --color=never --full-path --hidden"))

;; mermaid-mode
(defun my-mermaid-compile-after-save ()
  (interactive)
  (when (eq major-mode 'mermaid-mode)
    (mermaid-compile)))

(add-hook 'mermaid-mode-hook
          (lambda () (add-hook 'after-save-hook #'my-mermaid-compile-after-save)))

;; ellama
(with-eval-after-load 'llm
  (require 'llm-ollama)
  (setopt ellama-language "Japanese")
  (setopt ellama-naming-scheme 'ellama-generate-name-by-llm)
  (setopt ellama-provider (make-llm-ollama
                           :chat-model "codestral:22b-v0.1-q4_K_S"
                           :embedding-model "codestral:22b-v0.1-q4_K_S"))
  (setopt ellama-translation-provider (make-llm-ollama
                                       :chat-model "aya:35b-23-q4_K_S"
                                       :embedding-model "aya:35b-23-q4_K_S"))
  (setopt my-ellama-translation-quick-provider (make-llm-ollama
                                       :chat-model "gemma2:9b-instruct-q4_K_S"
                                       :embedding-model "gemma2:9b-text-q4_K_S"))

  (setopt ellama-providers
          '(("codestral" . (make-llm-ollama
                            :chat-model "codestral:22b-v0.1-q4_K_S"
                            :embedding-model "codestral:22b-v0.1-q4_K_S"))
            ("gemma2" . (make-llm-ollama
                            :chat-model "gemma2:27b-instruct-q4_K_S"
                            :embedding-model "gemma2:27b-instruct-q4_K_S"))
            ("command-r" . (make-llm-ollama
                            :chat-model "command-r:35b"
                            :embedding-model "command-r:35b"))
            ("llama3.1" . (make-llm-ollama
                                  :chat-model "llama3.1:8b"
                                  :embedding-model "llama3.1:8b"))
            )))

(when (require 'ellama nil t)
  (defun my-ellama-translate-quick ()
    "Quick version ask ellama to translate selected region or word at point."
    (interactive)
    (let ((text (if (region-active-p)
                    (buffer-substring-no-properties (region-beginning) (region-end))
                  (thing-at-point 'word))))
      (ellama-instant
       (format ellama-translation-template
               ellama-language text ellama-language)
       :provider my-ellama-translation-quick-provider)))

  (defun my-ellama-translate-to-english ()
    "Translate to English using ellama"
    (interactive)
    (let* ((beg (if (region-active-p)
                    (region-beginning)
                  (point-min)))
           (end (if (region-active-p)
                    (region-end)
                  (point-max)))
           (text (buffer-substring-no-properties beg end)))
      (kill-region beg end)
      (ellama-stream
       (format
        ellama-translation-template
        "English" text "English")
       :point beg)))
  )

;; Key bindings
(global-set-key (kbd "C-h b") 'embark-bindings)
(global-set-key (kbd "s-e") 'embark-act)
(global-set-key (kbd "C-a") 'smarter-move-beginning-of-line)
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)
(global-set-key (kbd "s-b") 'consult-buffer)
(global-set-key (kbd "C-s") 'my-consult-line)
(global-set-key (kbd "s-r") 'consult-recent-file)
(global-set-key (kbd "C-]") 'consult-ghq-find)
(global-set-key (kbd "C-}") 'consult-ghq-grep)
(global-set-key (kbd "<C-down>") 'next-error)
(global-set-key (kbd "<C-up>") 'previous-error)
(global-set-key (kbd "s-d") 'consult-lsp-diagnostics)
(global-set-key (kbd "M-g o") 'consult-outline)
(global-set-key (kbd "M-g s") 'magit-status)
(global-set-key (kbd "M-g a") 'magit-stage-file)
(global-set-key (kbd "M-g c") 'magit-commit-create)
(global-set-key (kbd "M-g d") 'magit-diff-buffer-file)
(global-set-key (kbd "<C-s-up>") 'diff-hl-previous-hunk)
(global-set-key (kbd "<C-s-down>") 'diff-hl-next-hunk)
(global-set-key (kbd "C-c C-r") 'quickrun)
(global-set-key (kbd "M-s-z") 'checkout-head-revision)
(global-set-key (kbd "C-x C-j") 'skk-mode)
(global-set-key (kbd "s-w") 'kill-current-buffer)
(global-set-key (kbd "s-T") 'reopen-killed-file)
(global-set-key (kbd "s-o") 'open-finder)
(global-set-key (kbd "<M-s-right>") 'next-code-buffer)
(global-set-key (kbd "<M-s-left>") 'previous-code-buffer)
(global-set-key (kbd "C-/") 'undo-tree-undo)
(global-set-key (kbd "C-'") 'undo-tree-redo)
(global-set-key (kbd "<s-return>") 'cua-rectangle-mark-mode)
(global-set-key (kbd "s-f") 'affe-grep)
(global-set-key (kbd "s-t") 'affe-find)
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
(with-eval-after-load 'darkroom
  (define-key darkroom-mode-map (kbd "C-s-=") 'darkroom-increase-margins)
  (define-key darkroom-mode-map (kbd "C-s--") 'darkroom-decrease-margins))
(with-eval-after-load 'git-commit
  (require 'ellama)
  (keymap-set git-commit-mode-map "C-c C-g" 'ellama-generate-commit-message))

;; Command protection
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'list-timers 'disabled nil)
(put 'list-threads 'disabled nil)


(defconst my/before-load-init-time (current-time))

;;;###autoload
(defun my/load-init-time ()
  "Loading time of user init files including time for `after-init-hook'."
  (let ((time1 (float-time
                (time-subtract after-init-time my/before-load-init-time)))
        (time2 (float-time
                (time-subtract (current-time) my/before-load-init-time))))
    (message (concat "Loading init files: %.0f [msec], "
                     "of which %.f [msec] for `after-init-hook'.")
             (* 1000 time1) (* 1000 (- time2 time1)))))
(add-hook 'after-init-hook #'my/load-init-time t)

(defvar my/tick-previous-time my/before-load-init-time)

;;;###autoload
(defun my/tick-init-time (msg)
  "Tick boot sequence at loading MSG."
  (when my/loading-profile-p
    (let ((ctime (current-time)))
      (message "---- %5.2f[ms] %s"
               (* 1000 (float-time
                        (time-subtract ctime my/tick-previous-time)))
               msg)
      (setq my/tick-previous-time ctime))))

(defun my/emacs-init-time ()
  "Emacs booting time in msec."
  (interactive)
  (message "Emacs booting time: %.0f [msec] = `emacs-init-time'."
           (* 1000
              (float-time (time-subtract
                           after-init-time
                           before-init-time)))))

(add-hook 'after-init-hook #'my/emacs-init-time)

;;; init.el ends here
