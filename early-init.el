;; package.el
(setq package-enable-at-startup nil)
(setq frame-resize-pixelwise t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(inhibit-startup-message t)
 '(initial-scratch-message nil)
 '(initial-frame-alist
   '((width . 224)
     (height . 73)
     (internal-border-width . 8)
     (top . 0)
     (left . 0)
     (left-fringe . 0)
     (right-fringe   . 0)
     (tool-bar-lines . 0)))
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(initial-buffer-choice nil)
 '(frame-title-format nil)
 '(cursor-in-non-selected-windows nil)
 '(font-lock-maximum-decoration nil)
 '(font-lock-maximum-size nil)
 '(x-underline-at-descent-line t)
 '(window-divider-default-right-width 16)
 '(window-divider-default-places 'right-only))

;; font
;; AsciiフォントをFira Codeに
(set-face-attribute 'default nil
                    :family "Fira Code"
                    :height 140)

;; https://github.com/emacs-lsp/lsp-mode#performance Increase the
;; amount of data which Emacs reads from the process. Again the emacs
;; default is too low 4k considering that the some of the language
;; server responses are in 800k - 3M range.
(setq-default read-process-output-max (* 1024 1024))

;; CJKフォントの横幅を調整
;; 12121212121212121212
;; あいうえおかきくけこ
;; (add-to-list 'face-font-rescale-alist '(".*Noto.*" . 1.2))
;; (add-to-list 'face-font-rescale-alist '(".*MotoyaLCedar.*" . 1.2))
;; (add-to-list 'face-font-rescale-alist '(".*BIZ UD.*" . 1.2))
(add-to-list 'face-font-rescale-alist '(".*Source Han Code JP.*" . 1.3))
(add-to-list 'face-font-rescale-alist '(".*Adobe Clean Han.*" . 1.3))

;; all-the-iconsの横幅を調整
(add-to-list 'face-font-rescale-alist '(".*all-the-icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*file-icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*FontAwesome.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*octicons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Weather Icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Material Icons.*" . 0.8))
(add-to-list 'face-font-rescale-alist '(".*Apple Color Emoji.*" . 0.9))
