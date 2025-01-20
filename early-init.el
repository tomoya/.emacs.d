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

;; No titlebar
(add-to-list 'default-frame-alist '(undecorated . t))

;; https://github.com/emacs-lsp/lsp-mode#performance Increase the
;; amount of data which Emacs reads from the process. Again the emacs
;; default is too low 4k considering that the some of the language
;; server responses are in 800k - 3M range.
(setq-default read-process-output-max (* 1024 1024))
