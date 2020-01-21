;;; typescript-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "typescript-mode" "../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode.el"
;;;;;;  "9324223e97966009343cd2eba6ecd5e1")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode.el
(put 'typescript-indent-level 'safe-local-variable #'integerp)

(autoload 'typescript-mode "typescript-mode" "\
Major mode for editing typescript.

Key bindings:

\\{typescript-mode-map}

\(fn)" t nil)

(eval-after-load 'folding '(when (fboundp 'folding-add-to-marks-list) (folding-add-to-marks-list 'typescript-mode "// {{{" "// }}}")))

(add-to-list 'auto-mode-alist '("\\.ts$" . typescript-mode))

;;;### (autoloads "actual autoloads are elsewhere" "typescript-mode"
;;;;;;  "../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "typescript-mode" '("typescript-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "typescript-mode-test-utilities"
;;;;;;  "../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode-test-utilities.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode-test-utilities.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "typescript-mode-test-utilities" '("font-lock-test" "get-face-at" "test-with-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode-test-utilities.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/typescript-mode-20200117.1708/typescript-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; typescript-mode-autoloads.el ends here