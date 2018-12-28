(defvar user-backup-directory (locate-user-emacs-file "backups")
  "This variable is define backup directory for users")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms
   `(("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" ,user-backup-directory t)))
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(diff-hl-flydiff-mode t)
 '(diff-hl-margin-mode t)
 '(find-file-visit-truename t)
 '(global-auto-revert-mode t)
 '(global-diff-hl-mode t)
 '(global-hl-line-mode t)
 '(global-whitespace-mode t)
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
 '(package-selected-packages '(magit helm-descbinds helm diff-hl spacemacs-theme))
 '(recentf-max-saved-items 100000)
 '(recentf-mode t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
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

;; Key bindings
(define-key global-map (kbd "s-t") 'helm-for-files)
(define-key global-map (kbd "M-g s") 'magit-status)

;; Helm
(helm-descbinds-mode)
