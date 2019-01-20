;;; auto-fix-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "auto-fix" "../../../../../../../.emacs.d/elpa/auto-fix-1.0.0/auto-fix.el"
;;;;;;  "cb29c02c05456a4c62845702a71f33b1")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/auto-fix-1.0.0/auto-fix.el

(autoload 'auto-fix-mode "auto-fix" "\
Toggle auto-fix-mode.

If called interactively, enable Auto-Fix mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'auto-fix-before-save "auto-fix" "\
Add this to .emacs to run gofmt on the current buffer when saving:
\(add-hook 'before-save-hook 'auto-fix-before-save).

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "auto-fix" "../../../../../../../.emacs.d/elpa/auto-fix-1.0.0/auto-fix.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/auto-fix-1.0.0/auto-fix.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auto-fix" '("auto-fix")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/auto-fix-1.0.0/auto-fix-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/auto-fix-1.0.0/auto-fix.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; auto-fix-autoloads.el ends here
