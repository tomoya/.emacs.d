;;; terraform-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "terraform-mode" "terraform-mode.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from terraform-mode.el

(autoload 'terraform-mode "terraform-mode" "\
Major mode for editing terraform configuration file

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.tf\\(vars\\)?\\'" . terraform-mode))

(register-definition-prefixes "terraform-mode" '("terraform-"))

;;;***

(provide 'terraform-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; terraform-mode-autoloads.el ends here
