;;; quickrun-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "quickrun" "quickrun.el" (0 0 0 0))
;;; Generated autoloads from quickrun.el

(autoload 'quickrun-set-default "quickrun" "\
Set `key' as default key in programing language `lang'.

\(fn LANG KEY)" nil nil)

(autoload 'quickrun-add-command "quickrun" "\
Not documented.

\(fn KEY ALIST &key DEFAULT MODE OVERRIDE)" nil nil)

(function-put 'quickrun-add-command 'lisp-indent-function 'defun)

(autoload 'quickrun "quickrun" "\
Run commands quickly for current buffer
   With universal prefix argument(C-u), select command-key,
   With double prefix argument(C-u C-u), run in compile-only-mode.

\(fn &rest PLIST)" t nil)

(autoload 'quickrun-with-arg "quickrun" "\
Run commands quickly for current buffer with arguments.

\(fn ARG)" t nil)

(autoload 'quickrun-region "quickrun" "\
Run commands with specified region.

\(fn START END)" t nil)

(autoload 'quickrun-replace-region "quickrun" "\
Run commands with specified region and replace.

\(fn START END)" t nil)

(autoload 'quickrun-eval-print "quickrun" "\
Run commands with specified region and replace.

\(fn START END)" t nil)

(autoload 'quickrun-compile-only "quickrun" "\
Exec only compilation." t nil)

(autoload 'quickrun-shell "quickrun" "\
Run commands in shell for interactive programs." t nil)

(autoload 'quickrun-autorun-mode "quickrun" "\
`quickrun' after saving buffer.

This is a minor mode.  If called interactively, toggle the
`Quickrun-Autorun mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `quickrun-autorun-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'anything-quickrun "quickrun" "\
Run quickrun with `anything'." t nil)

(autoload 'helm-quickrun "quickrun" "\
Run quickrun with `helm'." t nil)

(register-definition-prefixes "quickrun" '("helm-quickrun-" "quick"))

;;;***

(provide 'quickrun-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; quickrun-autoloads.el ends here
