;;; pfuture-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pfuture" "../../../../../../../../../.config/emacs/elpa/pfuture-20200425.1357/pfuture.el"
;;;;;;  "1a6a6a9b702961ae2b423367a9f73032")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/pfuture-20200425.1357/pfuture.el

(autoload 'pfuture-new "pfuture" "\
Create a new future process for command CMD.
Any arguments after the command are interpreted as arguments to the command.
This will return a process object with additional 'stderr and 'stdout
properties, which can be read via (process-get process 'stdout) and
\(process-get process 'stderr) or alternatively with
\(pfuture-result process) or (pfuture-stderr process).

Note that CMD must be a *sequence* of strings, meaning
this is wrong: (pfuture-new \"git status\")
this is right: (pfuture-new \"git\" \"status\")

\(fn &rest CMD)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "pfuture" "../../../../../../../../../.config/emacs/elpa/pfuture-20200425.1357/pfuture.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/pfuture-20200425.1357/pfuture.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pfuture" '("pfuture-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/pfuture-20200425.1357/pfuture-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/pfuture-20200425.1357/pfuture.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pfuture-autoloads.el ends here
