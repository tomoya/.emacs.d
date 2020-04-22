;;; fira-code-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "fira-code-mode" "../../../../../../../../../.config/emacs/elpa/fira-code-mode-20200415.2356/fira-code-mode.el"
;;;;;;  "0ff95edcc3e26914bdf482611cb53056")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/fira-code-mode-20200415.2356/fira-code-mode.el

(autoload 'fira-code-mode "fira-code-mode" "\
Fira Code ligatures minor mode

If called interactively, enable Fira-Code mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'global-fira-code-mode 'globalized-minor-mode t)

(defvar global-fira-code-mode nil "\
Non-nil if Global Fira-Code mode is enabled.
See the `global-fira-code-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-fira-code-mode'.")

(custom-autoload 'global-fira-code-mode "fira-code-mode" nil)

(autoload 'global-fira-code-mode "fira-code-mode" "\
Toggle Fira-Code mode in all buffers.
With prefix ARG, enable Global Fira-Code mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Fira-Code mode is enabled in all buffers where
`fira-code-mode' would do it.
See `fira-code-mode' for more information on Fira-Code mode.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "fira-code-mode"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/fira-code-mode-20200415.2356/fira-code-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/fira-code-mode-20200415.2356/fira-code-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fira-code-mode" '("fira-code-mode-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/fira-code-mode-20200415.2356/fira-code-mode-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/fira-code-mode-20200415.2356/fira-code-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; fira-code-mode-autoloads.el ends here
