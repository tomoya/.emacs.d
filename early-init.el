(message "Start early initialization...")

;; Add full file path to frame title
(setq frame-title-format "%b %f")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe-mode '(nil . 0) nil (fringe))
 '(inhibit-startup-screen t)
 '(initial-frame-alist
   '((width . 238)
     (height . 72)
     (top . 0)
     (left . 0)
     (left-fringe . 0)))
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

;; font
;; AsciiフォントをMenloに
(set-face-attribute 'default nil
                    :family "Menlo"
                    :height 140)

;; Notoフォントの横幅を調整
(add-to-list 'face-font-rescale-alist '(".*Noto.*" . 1.2))

;; all-the-iconsの横幅を調整
(add-to-list 'face-font-rescale-alist '(".*all-the-icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*file-icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*FontAwesome.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*octicons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Weather Icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Material Icons.*" . 0.8))

(message "Done early initialization")
