(require 'cl-lib)

;; Set exec-path from PATH env
(cl-loop for x in (reverse
                (split-string (substring (shell-command-to-string "echo $PATH") 0 -1) ":"))
      do (add-to-list 'exec-path x))

(defvar user-backup-directory (locate-user-emacs-file "backups")
  "This variable is define backup directory for users")

(require 'helm-projectile nil t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms
   `(("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" ,user-backup-directory t)))
 '(company-auto-complete t)
 '(company-dabbrev-code-ignore-case t)
 '(company-flx-mode t)
 '(company-global-modes t)
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 2)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-idle-delay 0.1)
 '(company-tooltip-limit 20)
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(diff-hl-flydiff-mode t)
 '(diff-hl-margin-mode t)
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
   '((width . 272)
     (height . 82)
     (top . 0)
     (left . 0)
     (left-fringe . 0)))
 '(menu-bar-mode nil)
 '(package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages
   '(tide typescript-mode ddskk company-flx helm-ghq company helm-projectile projectile magit helm-descbinds helm diff-hl spacemacs-theme))
 '(projectile-mode t nil (projectile))
 '(recentf-max-saved-items 100000)
 '(recentf-mode t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(skk-byte-compile-init-file t)
 '(skk-user-directory "~/.emacs.d/ddskk/")
 '(split-height-threshold nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
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
   '(face trailing tabs spaces lines newline empty indentation big-indent space-after-tab space-before-tab space-mark tab-mark newline-mark)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun my-before-save-hooks ()
  "My before save hooks"
  (delete-trailing-whitespace))

(add-hook 'before-save-hook 'my-before-save-hooks)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

;; Key bindings
(define-key global-map (kbd "s-t") 'helm-for-files)
(define-key global-map (kbd "s-p") 'helm-ghq)
(define-key global-map (kbd "M-g s") 'magit-status)
(define-key global-map (kbd "M-g a") 'magit-stage-file)
(define-key global-map (kbd "M-g c") 'magit-commit-create)
(define-key global-map (kbd "C-x C-j") 'skk-mode)
(define-key global-map (kbd "s-w") 'kill-this-buffer)
(define-key global-map (kbd "s-T") 'recentf-open-most-recent-file)
(define-key company-active-map [tab] 'company-complete-selection)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;; Helm
(helm-descbinds-mode)
