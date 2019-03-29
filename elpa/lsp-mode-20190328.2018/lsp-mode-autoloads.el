;;; lsp-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "lsp-clients"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-clients.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-clients.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-clients" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode" "../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-mode.el"
;;;;;;  "4e4e4268810d5f8c2505bbae5b5d109c")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-mode.el

(autoload 'lsp "lsp-mode" "\
Entry point for the server startup.
When IGNORE-MULTI-FOLDER is t the lsp mode will start new
language server even if there is language server which can handle
current language. When IGNORE-MULTI-FOLDER is nil current file
will be openned in multi folder language server if there is
such.

\(fn &optional IGNORE-MULTI-FOLDER)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-mode" "../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode" '("log--notification-performance" "lsp-" "make-lsp-client" "seq-" "when-lsp-workspace" "with-lsp-workspace")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-clients.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-mode-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp-mode.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/lsp-mode-20190328.2018/lsp.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lsp-mode-autoloads.el ends here
