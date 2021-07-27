;;; company-flx-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "company-flx" "company-flx.el" (0 0 0 0))
;;; Generated autoloads from company-flx.el

(defvar company-flx-mode nil "\
Non-nil if Company-Flx mode is enabled.
See the `company-flx-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `company-flx-mode'.")

(custom-autoload 'company-flx-mode "company-flx" nil)

(autoload 'company-flx-mode "company-flx" "\
company-flx minor mode

This is a minor mode.  If called interactively, toggle the
`Company-Flx mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value 'company-flx-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "company-flx" '("company-flx-"))

;;;***

(provide 'company-flx-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; company-flx-autoloads.el ends here
