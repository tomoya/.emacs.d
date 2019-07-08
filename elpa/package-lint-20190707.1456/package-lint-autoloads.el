;;; package-lint-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "package-lint" "../../../../../../../.emacs.d/elpa/package-lint-20190707.1456/package-lint.el"
;;;;;;  "053e09fb1332160ab3c83eb20100e9e5")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/package-lint-20190707.1456/package-lint.el

(autoload 'package-lint-buffer "package-lint" "\
Get linter errors and warnings for BUFFER.

Returns a list, each element of which is list of

   (LINE COL TYPE MESSAGE)

where TYPE is either 'warning or 'error.

Current buffer is used if none is specified.

\(fn &optional BUFFER)" nil nil)

(autoload 'package-lint-current-buffer "package-lint" "\
Display lint errors and warnings for the current buffer." t nil)

(autoload 'package-lint-batch-and-exit "package-lint" "\
Run `package-lint-buffer' on the files remaining on the command line.
Use this only with -batch, it won't work interactively.

When done, exit Emacs with status 0 if there were no errors nor warnings or 1
otherwise." nil nil)

(autoload 'package-lint-looks-like-a-package-p "package-lint" "\
Return non-nil if the current buffer appears to be intended as a package." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "package-lint"
;;;;;;  "../../../../../../../.emacs.d/elpa/package-lint-20190707.1456/package-lint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/package-lint-20190707.1456/package-lint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "package-lint" '("package-lint--")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/package-lint-20190707.1456/package-lint-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/package-lint-20190707.1456/package-lint.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; package-lint-autoloads.el ends here