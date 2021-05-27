;;; affe-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "affe" "affe.el" (0 0 0 0))
;;; Generated autoloads from affe.el

(autoload 'affe-grep "affe" "\
Fuzzy grep in DIR with optional INITIAL input.

\(fn &optional DIR INITIAL)" t nil)

(autoload 'affe-find "affe" "\
Fuzzy find in DIR with optional INITIAL input.

\(fn &optional DIR INITIAL)" t nil)

(register-definition-prefixes "affe" '("affe-"))

;;;***

;;;### (autoloads nil "affe-backend" "affe-backend.el" (0 0 0 0))
;;; Generated autoloads from affe-backend.el

(register-definition-prefixes "affe-backend" '("affe-backend--"))

;;;***

;;;### (autoloads nil nil ("affe-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; affe-autoloads.el ends here
