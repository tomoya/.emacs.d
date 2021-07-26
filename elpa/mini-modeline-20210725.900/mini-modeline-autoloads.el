;;; mini-modeline-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "mini-modeline" "mini-modeline.el" (0 0 0 0))
;;; Generated autoloads from mini-modeline.el

(defvar mini-modeline-mode nil "\
Non-nil if Mini-Modeline mode is enabled.
See the `mini-modeline-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `mini-modeline-mode'.")

(custom-autoload 'mini-modeline-mode "mini-modeline" nil)

(autoload 'mini-modeline-mode "mini-modeline" "\
Enable modeline in minibuffer.

This is a minor mode.  If called interactively, toggle the
`Mini-Modeline mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value 'mini-modeline-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "mini-modeline" '("mini-modeline-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; mini-modeline-autoloads.el ends here
