;;; markdown-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "markdown-mode" "../../../../../../../../../.config/emacs/elpa/markdown-mode-20200413.2232/markdown-mode.el"
;;;;;;  "3c4c3bb1647de97ea58e836c8bfec872")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/markdown-mode-20200413.2232/markdown-mode.el

(autoload 'markdown-mode "markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

(autoload 'markdown-view-mode "markdown-mode" "\
Major mode for viewing Markdown content.

\(fn)" t nil)

(autoload 'gfm-view-mode "markdown-mode" "\
Major mode for viewing GitHub Flavored Markdown content.

\(fn)" t nil)

(autoload 'markdown-live-preview-mode "markdown-mode" "\
Toggle native previewing on save for a specific markdown file.

If called interactively, enable Markdown-Live-Preview mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "markdown-mode"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/markdown-mode-20200413.2232/markdown-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/markdown-mode-20200413.2232/markdown-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "markdown-mode" '("defun-markdown-" "gfm-" "markdown")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/markdown-mode-20200413.2232/markdown-mode-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/markdown-mode-20200413.2232/markdown-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; markdown-mode-autoloads.el ends here