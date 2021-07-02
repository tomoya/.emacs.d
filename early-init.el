(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(inhibit-startup-message t)
 '(initial-scratch-message nil)
 '(initial-frame-alist
   '((font . "Roboto Mono:style=Light:size=14")
     (width . 253)
     (height . 65)
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
                    :family "Roboto Mono"
                    :height 140)

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
                     (propertize (format "+%s" (match-string 1 diff-count)) 'face '(:foreground "#44b556"))
                     (propertize (format "-%s" (match-string 2 diff-count)) 'face '(:foreground "#d83790")))
                  (propertize "✓" 'face '(:inherit compilation-info :weight bold)))))
          (format "%s %s"
                  (truncate-string-to-width branch 21 nil nil "…")
                  diff-count-text))))))

(setq-default mini-modeline-l-format '("%f"))
(setq-default mini-modeline-r-format '("%e"
                                       mode-line-mule-info
                                       "%I %p %n"
                                       (:eval (my-mode-line-vc))
                                       " "
                                       flycheck-mode-line))
