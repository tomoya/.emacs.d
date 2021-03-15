;;; tree-sitter-langs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "tree-sitter-langs"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tree-sitter-langs" '("tree-sitter-langs-")))

;;;***

;;;### (autoloads nil "tree-sitter-langs-build" "../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs-build.el"
;;;;;;  "2adf9de6eb2289443309121954faa063")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs-build.el

(autoload 'tree-sitter-langs-install-grammars "tree-sitter-langs-build" "\
Download and install the specified VERSION of the language grammar bundle.
If VERSION or OS is not specified, use the default of
`tree-sitter-langs--bundle-version' and `tree-sitter-langs--os'.

This installs the grammar bundle even if the same version was already installed,
unless SKIP-IF-INSTALLED is non-nil.

The download bundle file is deleted after installation, unless KEEP-BUNDLE is
non-nil.

\(fn &optional SKIP-IF-INSTALLED VERSION OS KEEP-BUNDLE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "tree-sitter-langs-build"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs-build.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs-build.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tree-sitter-langs-build" '("tree-sitter-langs-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs-build.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs-pkg.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/tree-sitter-langs-20210314.1704/tree-sitter-langs.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; tree-sitter-langs-autoloads.el ends here
