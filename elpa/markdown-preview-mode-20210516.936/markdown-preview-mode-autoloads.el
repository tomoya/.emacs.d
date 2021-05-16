;;; markdown-preview-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "markdown-preview-mode" "markdown-preview-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from markdown-preview-mode.el

(autoload 'markdown-preview-open-browser "markdown-preview-mode" "\
Open the `markdown-preview' in the browser." t nil)

(autoload 'markdown-preview-cleanup "markdown-preview-mode" "\
Cleanup `markdown-preview' mode." t nil)

(autoload 'markdown-preview-mode "markdown-preview-mode" "\
Markdown preview mode.

If called interactively, toggle `Markdown-Preview mode'.  If the
prefix argument is positive, enable the mode, and if it is zero
or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "markdown-preview-mode" '("markdown-preview-"))

;;;***

;;;### (autoloads nil nil ("markdown-preview-mode-pkg.el") (0 0 0
;;;;;;  0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; markdown-preview-mode-autoloads.el ends here
