;;; web-server-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "web-server" "../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server.el"
;;;;;;  "34d7ae7bf355040cb72f6095facdab24")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server.el

(autoload 'ws-start "web-server" "\
Start a server using HANDLERS and return the server object.

HANDLERS may be a single function (which is then called on every
request) or a list of conses of the form (MATCHER . FUNCTION),
where the FUNCTION associated with the first successful MATCHER
is called.  Handler functions are called with two arguments, the
process and the request object.

A MATCHER may be either a function (in which case it is called on
the request object) or a cons cell of the form (KEYWORD . STRING)
in which case STRING is matched against the value of the header
specified by KEYWORD.

Any supplied NETWORK-ARGS are assumed to be keyword arguments for
`make-network-process' to which they are passed directly.

For example, the following starts a simple hello-world server on
port 8080.

  (ws-start
   (lambda (request)
     (with-slots (process headers) request
       (process-send-string process
        \"HTTP/1.1 200 OK\\r\\nContent-Type: text/plain\\r\\n\\r\\nhello world\")))
   8080)

Equivalently, the following starts an identical server using a
function MATCH and the `ws-response-header' convenience
function.

  (ws-start
   `(((lambda (_) t) .
      (lambda (request)
        (with-slots ((proc process)) request
          (ws-response-header proc 200 '(\"Content-Type\" . \"text/plain\"))
          (process-send-string proc \"hello world\")))))
   8080)

\(fn HANDLERS PORT &optional LOG-BUFFER &rest NETWORK-ARGS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "web-server" "../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "web-server" '("ws-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "web-server-status-codes"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server-status-codes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server-status-codes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "web-server-status-codes" '("ws-status-codes")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server-pkg.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server-status-codes.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/web-server-20201217.1252/web-server.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; web-server-autoloads.el ends here
