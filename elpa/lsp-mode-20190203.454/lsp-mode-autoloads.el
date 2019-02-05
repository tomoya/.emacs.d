;;; lsp-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "lsp-clients"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-clients.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-clients.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-clients" '("fortls--suggest-project-root" "lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode" "../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-mode.el"
;;;;;;  "eab9b3556f8ffc54f0b6ec599bb17871")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-mode.el

(autoload 'lsp "lsp-mode" "\
Entry point for the server startup.
When IGNORE-MULTI-FOLDER is t the lsp mode will start new
language server even if there is language server which can handle
current language. When IGNORE-MULTI-FOLDER is nil current file
will be openned in multi folder language server if there is
such.

\(fn &optional IGNORE-MULTI-FOLDER)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-mode" "../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode" '("lsp-" "make-lsp-client" "when-lsp-workspace" "with-lsp-workspace")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-clients.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-mode-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp-mode.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190203.454/lsp.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lsp-mode-autoloads.el ends here