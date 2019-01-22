;;; init.el --- Initialization file for Emacs
;;; Commentary: Emacs Startup File --- initialization for Emacs

(require 'cl-lib)

;; Set PATH env and exec-path from $PATH
(setenv "PATH" (shell-command-to-string "echo $PATH"))
(cl-loop for x in (reverse
                (split-string (substring (shell-command-to-string "echo $PATH") 0 -1) ":"))
      do (add-to-list 'exec-path x))

(defvar user-backup-directory (locate-user-emacs-file "backups")
  "This variable is define backup directory for users.")

;; Used by custom-set-variables
(require 'helm-projectile nil t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Start auto generated configuration by customize
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-revert-interval 1)
 '(auto-save-file-name-transforms
   `(("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" ,user-backup-directory t)))
 '(company-auto-complete 'ignore)
 '(company-dabbrev-code-ignore-case t)
 '(company-dabbrev-code-modes
   '(prog-mode batch-file-mode csharp-mode css-mode erlang-mode haskell-mode jde-mode lua-mode python-mode typescript-mode))
 '(company-emoji-insert-unicode nil)
 '(company-flx-mode t)
 '(company-global-modes t)
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 2)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-idle-delay 0.1)
 '(company-tooltip-limit 20)
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(diff-hl-flydiff-mode t)
 '(diff-hl-margin-mode t)
 '(direnv-mode t nil (direnv))
 '(find-file-visit-truename t)
 '(fringe-mode '(nil . 0) nil (fringe))
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-diff-hl-mode t)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(global-visual-line-mode t)
 '(global-whitespace-mode t)
 '(helm-for-files-preferred-list
   '(helm-source-buffers-list helm-source-recentf helm-source-projectile-files-list helm-source-projectile-projects helm-source-files-in-current-dir))
 '(helm-split-window-preferred-function 'split-window-sensibly)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-frame-alist
   '((width . 238)
     (height . 72)
     (top . 0)
     (left . 0)
     (left-fringe . 0)))
 '(js-indent-level 2)
 '(markdown-command "marked")
 '(menu-bar-mode nil)
 '(package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages
   '(markdown-preview-mode auto-fix wgrep company-emoji company-lsp lsp-ui lsp-mode web-mode direnv darkburn-theme undo-tree markdown-mode smartparens tide typescript-mode ddskk company-flx helm-ghq company helm-projectile projectile magit helm-descbinds helm diff-hl spacemacs-theme))
 '(projectile-mode t nil (projectile))
 '(recentf-max-saved-items 100000)
 '(recentf-mode t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(skk-byte-compile-init-file t)
 '(skk-user-directory "~/.emacs.d/ddskk/")
 '(smartparens-global-mode t)
 '(split-height-threshold nil)
 '(tab-width 4)
 '(tide-always-show-documentation t)
 '(tide-completion-ignore-case t)
 '(tool-bar-mode nil)
 '(typescript-indent-level 2)
 '(web-mode-code-indent-offset 2)
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
   '(face trailing tabs spaces newline empty indentation space-after-tab space-before-tab space-mark tab-mark)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-newline ((t (:foreground "gray25")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End customize configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; markdown-preview-mode
(setq markdown-preview-stylesheets (list "https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/2.10.0/github-markdown.min.css"))

;; font
;; set-fontset-font を early-init.el で実行するとEmacsが死ぬ
;; 日本語フォントをNoto Serif CJK JPに
(set-fontset-font
 nil 'japanese-jisx0208
(font-spec :family "Noto Serif CJK JP"))

;; ひらがなとカタカナをNoto Sans CJK JPに
;; U+3000-303F  CJKの記号および句読点
;; U+3040-309F  ひらがな
;; U+30A0-30FF  カタカナ
(set-fontset-font
 nil '(#x3040 . #x30ff)
 (font-spec :family "Noto Sans CJK JP"))

(defvar ignore-buffer-regex "^\\(\*\\|magit.+:\\)"
  "Ignore switch-code-buffer() regex.")

(defun switch-code-buffer (&optional previous)
  "Switch buffer ignore no code buffers.
if you want to switch to previous buffer, set first argument non-nil."
  (interactive)
  (let* ((previous (or previous nil))
         (bread-crumb (buffer-name)))
    (message "%s" previous)
    (or (and previous (previous-buffer))
        (next-buffer))
    (while
        (and
         (string-match-p ignore-buffer-regex (buffer-name))
         (not ( equal bread-crumb (buffer-name) )) )
    (or (and previous (previous-buffer))
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
  (or (and (buffer-file-name)
           (vc-git-checkout (buffer-file-name) "HEAD")
           (message "File reverted: %s" (buffer-file-name)))
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

;; ruby-mode
(defun setup-auto-fix-rubocop ()
  (setq-local auto-fix-command "rubocop")
  (setq-local auto-fix-option "-a")
  (auto-fix-mode +1))

(add-hook 'ruby-mode-hook #'setup-auto-fix-rubocop)

;; TypeScript/Tide
(defun setup-tide-mode ()
  "Setqup function for tide-mode."
  (interactive)
  (tide-setup)
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1))

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; ts-web-mode derrived from web-mode
(define-derived-mode ts-web-mode web-mode "TS-Web"
  (setq-local web-mode-content-type "jsx"))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . ts-web-mode))

;; TSX using ts-web-mode
(flycheck-add-mode 'typescript-tslint 'ts-web-mode)
(add-hook 'ts-web-mode-hook #'setup-tide-mode)

(defun my-use-local-lint ()
  "Use local lint if exist it."
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory) "node_modules"))
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
(add-hook 'typescript-mode-hook #'lsp)
(add-hook 'ts-web-mode-hook #'lsp)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(with-eval-after-load 'lsp-clients
  (lsp-register-client
   (make-lsp-client :new-connection (lsp-stdio-connection 'lsp-typescript--ls-command)
                    :major-modes '(typescript-mode js-mode js2-mode rjsx-mode ts-web-mode)
                    :priority -1
                    :ignore-messages '("readFile .*? requested by TypeScript but content not available")
                    :server-id 'ts-ls)))

;; company
(push 'company-emoji company-backends)
(push 'company-lsp company-backends)

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

;; Key bindings
(global-set-key (kbd "C-a") 'smarter-move-beginning-of-line)
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)
(global-set-key (kbd "s-t") 'helm-for-files)
(global-set-key (kbd "s-p") 'helm-ghq)
(global-set-key (kbd "M-g s") 'magit-status)
(global-set-key (kbd "M-g a") 'magit-stage-file)
(global-set-key (kbd "M-g c") 'magit-commit-create)
(global-set-key (kbd "M-g d") 'magit-diff-buffer-file)
(global-set-key (kbd "M-s-z") 'checkout-head-revision)
(global-set-key (kbd "C-x C-j") 'skk-mode)
(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "s-T") 'recentf-open-most-recent-file)
(global-set-key (kbd "<M-s-right>") 'next-code-buffer)
(global-set-key (kbd "<M-s-left>") 'previous-code-buffer)
(global-set-key (kbd "C-/") 'undo-tree-undo)
(global-set-key (kbd "C-'") 'undo-tree-redo)
(define-key company-active-map [tab] 'company-complete-selection)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;; Command protection
(put 'narrow-to-region 'disabled nil)

;;; init.el ends here
