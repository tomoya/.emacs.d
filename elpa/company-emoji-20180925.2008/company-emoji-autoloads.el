;;; company-emoji-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "company-emoji" "../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji.el"
;;;;;;  "7f35b9c04d28440874f1a28e380fd7ff")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji.el

(autoload 'company-emoji "company-emoji" "\
Provide a backend for company to complete emoji-words.

company.el calls this function, and passes a COMMAND to it that
depends on the context: 'prefix', 'candidates', 'annotation',
etc.  In some contexts it also passes ARG, which is the list of
candidates that match what has been typed so far.  Sometimes ARG
is a single candidate, as when COMMAND is 'annotation' or
'post-completion'.  Other arguments are IGNORED.

\(fn COMMAND &optional ARG &rest IGNORED)" nil nil)

(autoload 'company-emoji-init "company-emoji" "\
Add emoji to the company backends.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-emoji"
;;;;;;  "../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-emoji" '("company-emoji")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "company-emoji-list"
;;;;;;  "../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji-list.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji-list.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-emoji-list" '("company-emoji-list-create")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji-list.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/company-emoji-20180925.2008/company-emoji.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; company-emoji-autoloads.el ends here
