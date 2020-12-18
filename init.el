;;; init.el --- Initialization file for Emacs
;;; Commentary: Emacs Startup File --- initialization for Emacs

(require 'cl-lib)
(setq default-directory "~/")

(add-to-list 'load-path (locate-user-emacs-file "nano"))

;; Set PATH env and exec-path from $PATH
(setenv "PATH" (shell-command-to-string "echo $PATH"))
(cl-loop for x in (reverse
                (split-string (substring (shell-command-to-string "echo $PATH") 0 -1) ":"))
      do (add-to-list 'exec-path x))

;; Used by custom-set-variables
(require 'helm-projectile nil t)

;; nano
;; Fix undefined face on nano-theme.el
(defgroup helm-swoop nil
  "Open helm-swoop."
  :prefix "helm-swoop-" :group 'helm)

(defface helm-swoop-target-line-face
  '((t (:background "#e3e300" :foreground "#222222")))
  "Face for helm-swoop target line"
  :group 'helm-swoop)
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
(require 'nano-session)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Start auto generated configuration by customize
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(auto-revert-interval 1)
 '(company-auto-commit 'ignore)
 '(company-box-doc-delay 0.3)
 '(company-box-icons-alist 'company-box-icons-all-the-icons)
 '(company-dabbrev-code-ignore-case t)
 '(company-dabbrev-code-modes
   '(prog-mode batch-file-mode csharp-mode css-mode erlang-mode haskell-mode jde-mode lua-mode python-mode typescript-mode))
 '(company-emoji-insert-unicode nil)
 '(company-flx-mode t)
 '(company-global-modes t)
 '(company-idle-delay 0)
 '(company-lsp-cache-candidates 'auto)
 '(company-minimum-prefix-length 2)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-idle-delay 0.1)
 '(company-tooltip-limit 20)
 '(completion-styles '(basic flex partial-completion emacs22))
 '(create-lockfiles nil)
 '(css-indent-offset 2)
 '(cursor-in-non-selected-windows nil)
 '(custom-safe-themes
   '("88049c35e4a6cedd4437ff6b093230b687d8a1fb65408ef17bfcf9b7338734f6" "7803ff416cf090613afd3b4c3de362e64063603522d4974bcae8cfa53cf1fd1b" "bb5a253b1e359db941284cc74750ecf38aa93878b208919fc0f2199daaef491e" "d90fe08e88654af93970f730a686b4fb936bad4e4b3b86ae3ce66388585ae649" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(delete-selection-mode t)
 '(describe-char-unidata-list
   '(name old-name general-category canonical-combining-class bidi-class decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment uppercase lowercase titlecase))
 '(diff-hl-flydiff-mode t)
 '(diff-hl-margin-mode nil)
 '(direnv-mode t nil (direnv))
 '(easy-hugo-basedir "/Users/tomoya/src/github.com/tomoya/blog.tomoya.dev")
 '(easy-hugo-root "/")
 '(easy-hugo-url "")
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(find-file-visit-truename t)
 '(flycheck-posframe-error-prefix "E: ")
 '(flycheck-posframe-warning-prefix "W: ")
 '(font-lock-maximum-decoration nil)
 '(font-lock-maximum-size nil)
 '(frame-tabs-filter-function 'my-frame-tabs-default-filter)
 '(frame-tabs-mode nil)
 '(frame-title-format nil t)
 '(fringe-mode '(nil . 0) nil (fringe))
 '(gc-cons-threshold 100000000)
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-diff-hl-mode t)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(global-whitespace-mode t)
 '(helm-for-files-preferred-list
   '(helm-source-buffers-list helm-source-recentf helm-source-projectile-files-list helm-source-projectile-projects helm-source-files-in-current-dir))
 '(helm-split-window-preferred-function 'split-window-sensibly)
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX" . "#dc752f")
     ("XXXX" . "#dc752f")
     ("???" . "#dc752f")))
 '(indent-tabs-mode nil)
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(initial-frame-alist
   '((width . 238)
     (height . 72)
     (top . 0)
     (left . 0)
     (left-fringe . 0)))
 '(initial-scratch-message nil)
 '(js-indent-level 2)
 '(lsp-print-performance t)
 '(lsp-server-install-dir
   (expand-file-name "lsp"
                     (or
                      (when-let
                          (xdg-cache-home-dir
                           (getenv "XDG_CACHE_HOME"))
                        (concat xdg-cache-home-dir "/emacs"))
                      (locate-user-emacs-file ".cache"))))
 '(lsp-ui-sideline-show-hover t)
 '(markdown-command "marked")
 '(menu-bar-mode nil)
 '(mouse-wheel-flip-direction t)
 '(mouse-wheel-tilt-scroll t)
 '(neo-autorefresh t)
 '(neo-confirm-delete-directory-recursively 'off-p)
 '(neo-confirm-kill-buffers-for-files-in-directory 'off-p)
 '(neo-default-system-application "open")
 '(neo-hidden-regexp-list
   '("\\.pyc$" "~$" "^#.*#$" "\\.elc$" "\\.o$" "\\.git$" "\\.DS_Store$"))
 '(neo-keymap-style 'concise)
 '(neo-show-slash-for-folder nil)
 '(neo-theme 'icons)
 '(neo-toggle-window-keep-p t)
 '(neo-vc-integration '(face))
 '(package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages
   '(forge github-review string-inflection exec-path-from-shell projectile-ripgrep rg json-mode terraform-mode dockerfile-mode copy-as-format git-link csv-mode quickrun zone-nyan darktooth-theme darkroom company-tabnine yaml-mode php-mode cyberpunk-2019-theme flycheck-posframe rspec-mode session fira-code-mode pdf-tools company-box frame-tabs all-the-icons neotree flycheck-package easy-hugo htmlize markdown-preview-mode auto-fix wgrep company-emoji company-lsp lsp-ui lsp-mode web-mode direnv darkburn-theme undo-tree markdown-mode smartparens tide typescript-mode ddskk company-flx helm-ghq company helm-projectile projectile magit helm-descbinds helm diff-hl spacemacs-theme))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(project-vc-ignores '("node_modules" ".git" "tmp" "dist" "coverage"))
 '(projectile-enable-caching t)
 '(projectile-globally-ignored-directories
   '(".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "node_modules" "__snapshots__"))
 '(projectile-mode t nil (projectile))
 '(recentf-max-saved-items 100000)
 '(recentf-mode t)
 '(ruby-insert-encoding-magic-comment nil)
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(session-initialize '(session places))
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(skk-byte-compile-init-file t)
 '(skk-user-directory (locate-user-emacs-file "ddskk"))
 '(smartparens-global-mode t)
 '(split-height-threshold nil)
 '(tab-width 4)
 '(tide-always-show-documentation t)
 '(tide-completion-ignore-case t)
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(truncate-partial-width-windows nil)
 '(typescript-indent-level 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-comment-interpolation t)
 '(web-mode-enable-current-column-highlight t)
 '(web-mode-enable-current-element-highlight t)
 '(web-mode-markup-indent-offset 2)
 '(whitespace-display-mappings
   '((space-mark 12288
                 [9633])
     (newline-mark 10
                   [182 10])
     (tab-mark 9
               [187 9]
               [92 9])))
 '(whitespace-space-regexp "\\(　+\\)")
 '(whitespace-style
   '(face trailing tabs spaces newline empty indentation space-after-tab space-before-tab space-mark tab-mark))
 '(window-divider-default-places 'right-only)
 '(window-divider-default-right-width 24)
 '(x-underline-at-descent-line t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(frame-tabs-buffer-tab ((t (:inherit frame-tabs-face :foreground "gray60" :box (:line-width 5 :color "#212326")))))
 '(frame-tabs-face ((t (:background "#212326" :foreground "gray80"))))
 '(frame-tabs-higlight-tab ((t (:inherit frame-tabs-buffer-tab :background "#3d4147" :box (:line-width 5 :color "#3d4147")))))
 '(frame-tabs-selected-tab ((t (:inherit frame-tabs-buffer-tab :background "#292b2e" :foreground "white" :box (:line-width 5 :color "#292b2e")))))
 '(whitespace-newline ((t (:foreground "gray25")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End customize configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(with-eval-after-load 'flycheck
  (flycheck-package-setup)
  (add-hook 'flycheck-mode-hook #'flycheck-posframe-mode))

;; markdown-preview-mode
(setq markdown-preview-stylesheets (list "https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/2.10.0/github-markdown.min.css"))

;; font
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
  (add-hook 'prog-mode-hook 'fira-code-mode))

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

(add-hook 'ts-web-mode-hook #'auto-fix-mode)
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

;; ts-web-mode derrived from web-mode
(define-derived-mode ts-web-mode web-mode "TS-Web"
  (setq-local web-mode-content-type "jsx"))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . ts-web-mode))

;; TSX using ts-web-mode
(flycheck-add-mode 'typescript-tslint 'ts-web-mode)
(flycheck-add-mode 'javascript-eslint 'ts-web-mode)

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
(add-hook 'typescript-mode-hook #'lsp)
(add-hook 'ts-web-mode-hook #'lsp)
(add-hook 'terraform-mode-hook #'lsp)
(add-hook 'yaml-mode-hook #'lsp)
(add-hook 'json-mode-hook #'lsp)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

;; company
(push 'company-emoji company-backends)
;; (push 'company-lsp company-backends)
;; (push 'company-tabnine company-backends)
(add-hook 'company-mode-hook 'company-box-mode)

;; Helm
(helm-descbinds-mode)

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

(defun after-init-hooks ()
  (neotree-toggle)
  (session-initialize))

(add-hook 'after-init-hook #'after-init-hooks)

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

;; Key bindings
(keyboard-translate ?\C-h ?\C-?)
(global-set-key (kbd "C-a") 'smarter-move-beginning-of-line)
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)
(global-set-key (kbd "s-t") 'helm-for-files)
(global-set-key (kbd "C-]") 'helm-ghq)
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
(global-set-key (kbd "s-F") 'projectile-ripgrep)
(global-set-key (kbd "s-\\") 'neotree-toggle)
(global-set-key (kbd "M-g l") 'git-link)
(global-set-key (kbd "s-c") 'copy-as-format-github)
(global-set-key (kbd "C-c C-u") 'string-inflection-all-cycle)
(define-key company-active-map [tab] 'company-complete-selection)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;; Command protection
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'list-timers 'disabled nil)

;;; init.el ends here
