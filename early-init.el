(setq frame-title-format
      '((:eval
         (if (buffer-file-name)
             (let ((project-name (projectile-project-name)))
               (if (string= "-" project-name)
                   "%f"
                 (format "%s: %s" project-name (abbreviate-file-name (buffer-file-name)))))
           "%b"))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe-mode '(nil . 0) nil (fringe))
 '(inhibit-startup-screen t)
 '(inhibit-startup-message t)
 '(initial-scratch-message nil)
 '(initial-frame-alist
   '((width . 249)
     (height . 62)
     (top . 0)
     (left . 0)
     (left-fringe . 0)))
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

;; font
;; AsciiフォントをFira Codeに
;; (set-face-attribute 'default nil
;;                     :family "Fira Code"
;;                     :height 140)

;; https://github.com/emacs-lsp/lsp-mode#performance Increase the
;; amount of data which Emacs reads from the process. Again the emacs
;; default is too low 4k considering that the some of the language
;; server responses are in 800k - 3M range.
(setq-default read-process-output-max (* 1024 1024))

;; CJKフォントの横幅を調整
;; (add-to-list 'face-font-rescale-alist '(".*Noto.*" . 1.2))
;; (add-to-list 'face-font-rescale-alist '(".*MotoyaLCedar.*" . 1.2))
(add-to-list 'face-font-rescale-alist '(".*BIZ UD.*" . 1.2))

;; all-the-iconsの横幅を調整
(add-to-list 'face-font-rescale-alist '(".*all-the-icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*file-icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*FontAwesome.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*octicons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Weather Icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Material Icons.*" . 0.8))
