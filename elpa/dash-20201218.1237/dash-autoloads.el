;;; dash-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dash" "../../../../../../../../../.config/emacs/elpa/dash-20201218.1237/dash.el"
;;;;;;  "14b5d5d65d36fef01d9bca56b2cd8232")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/dash-20201218.1237/dash.el

(autoload 'dash-fontify-mode "dash" "\
Toggle fontification of Dash special variables.

If called interactively, enable Dash-Fontify mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

Dash-Fontify mode is a buffer-local minor mode intended for Emacs
Lisp buffers.  Enabling it causes the special variables bound in
anaphoric Dash macros to be fontified.  These anaphoras include
`it', `it-index', `acc', and `other'.  In older Emacs versions
which do not dynamically detect macros, Dash-Fontify mode
additionally fontifies Dash macro calls.

See also `dash-fontify-mode-lighter' and
`global-dash-fontify-mode'.

\(fn &optional ARG)" t nil)

(put 'global-dash-fontify-mode 'globalized-minor-mode t)

(defvar global-dash-fontify-mode nil "\
Non-nil if Global Dash-Fontify mode is enabled.
See the `global-dash-fontify-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-dash-fontify-mode'.")

(custom-autoload 'global-dash-fontify-mode "dash" nil)

(autoload 'global-dash-fontify-mode "dash" "\
Toggle Dash-Fontify mode in all buffers.
With prefix ARG, enable Global Dash-Fontify mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Dash-Fontify mode is enabled in all buffers where
`dash--turn-on-fontify-mode' would do it.
See `dash-fontify-mode' for more information on Dash-Fontify mode.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "dash" "../../../../../../../../../.config/emacs/elpa/dash-20201218.1237/dash.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/dash-20201218.1237/dash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dash" '("!cdr" "!cons" "--" "->" "-a" "-butlast" "-c" "-d" "-e" "-f" "-gr" "-i" "-keep" "-l" "-m" "-non" "-only-some" "-p" "-r" "-s" "-t" "-u" "-value-to-list" "-when-let" "-zip" "dash-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/dash-20201218.1237/dash-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/dash-20201218.1237/dash-pkg.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/dash-20201218.1237/dash.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dash-autoloads.el ends here
