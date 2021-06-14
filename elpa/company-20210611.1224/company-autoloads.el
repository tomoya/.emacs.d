;;; company-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company.el

(autoload 'company-mode "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

If called interactively, toggle `Company mode'.  If the prefix
argument is positive, enable the mode, and if it is zero or
negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

The mode's hook is called both when the mode is enabled and when
it is disabled.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(put 'global-company-mode 'globalized-minor-mode t)

(defvar global-company-mode nil "\
Non-nil if Global Company mode is enabled.
See the `global-company-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company" nil)

(autoload 'global-company-mode "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if ARG is
omitted or nil.

Company mode is enabled in all buffers where `company-mode-on' would
do it.

See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

(autoload 'company-manual-begin "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company" nil t nil)

(autoload 'company-complete "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company" "\
Insert the common part of all candidates or the current selection.
The first time this is called, the common part is inserted, the second
time, or when the selection has been changed, the selected candidate is
inserted." t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company" '("company-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-abbrev"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-abbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-abbrev.el

(autoload 'company-abbrev "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-abbrev" "\
`company-mode' completion backend for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-abbrev" '("company-abbrev-insert"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-bbdb"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-bbdb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-bbdb.el

(autoload 'company-bbdb "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-bbdb" "\
`company-mode' completion backend for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-bbdb" '("company-bbdb-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-capf"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-capf.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-capf.el

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-capf" '("company-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-clang"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-clang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-clang.el

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-clang" '("company-clang"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-cmake"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-cmake.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-cmake.el

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-cmake" '("company-cmake"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-css"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-css.el

(autoload 'company-css "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-css" "\
`company-mode' completion backend for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-css" '("company-css-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev.el

(autoload 'company-dabbrev "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev" "\
dabbrev-like `company-mode' completion backend.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev" '("company-dabbrev-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev-code"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev-code.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev-code.el

(autoload 'company-dabbrev-code "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev-code" "\
dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-dabbrev-code" '("company-dabbrev-code-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-elisp"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-elisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-elisp.el

(autoload 'company-elisp "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-elisp" "\
`company-mode' completion backend for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-elisp" '("company-elisp-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-etags"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-etags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-etags.el

(autoload 'company-etags "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-etags" "\
`company-mode' completion backend for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-etags" '("company-etags-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-files"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-files.el

(autoload 'company-files "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-files" "\
`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-files" '("company-file"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-gtags"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-gtags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-gtags.el

(autoload 'company-gtags "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-gtags" "\
`company-mode' completion backend for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-gtags" '("company-gtags-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-ispell"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-ispell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-ispell.el

(autoload 'company-ispell "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-ispell" "\
`company-mode' completion backend using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-ispell" '("company-ispell-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-keywords"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-keywords.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-keywords.el

(autoload 'company-keywords "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-keywords" "\
`company-mode' backend for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-keywords" '("company-keywords-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-nxml"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-nxml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-nxml.el

(autoload 'company-nxml "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-nxml" "\
`company-mode' completion backend for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-nxml" '("company-nxml-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-oddmuse"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-oddmuse.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-oddmuse.el

(autoload 'company-oddmuse "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-oddmuse" "\
`company-mode' completion backend for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-oddmuse" '("company-oddmuse-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-semantic"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-semantic.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-semantic.el

(autoload 'company-semantic "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-semantic" "\
`company-mode' completion backend using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-semantic" '("company-semantic-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-template"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-template.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-template.el

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-template" '("company-template-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tempo"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tempo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tempo.el

(autoload 'company-tempo "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tempo" "\
`company-mode' completion backend for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tempo" '("company-tempo-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tng"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tng.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tng.el

(autoload 'company-tng-frontend "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tng" "\
When the user changes the selection at least once, this
frontend will display the candidate in the buffer as if it's
already there and any key outside of `company-active-map' will
confirm the selection and finish the completion.

\(fn COMMAND)" nil nil)

(define-obsolete-function-alias 'company-tng-configure-default 'company-tng-mode "0.9.14" "\
Applies the default configuration to enable company-tng.")

(defvar company-tng-mode nil "\
Non-nil if Company-Tng mode is enabled.
See the `company-tng-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `company-tng-mode'.")

(custom-autoload 'company-tng-mode "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tng" nil)

(autoload 'company-tng-mode "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tng" "\
This minor mode enables `company-tng-frontend'.

If called interactively, toggle `Company-Tng mode'.  If the
prefix argument is positive, enable the mode, and if it is zero
or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-tng" '("company-tng-"))

;;;***

;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-yasnippet"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-yasnippet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-yasnippet.el

(autoload 'company-yasnippet "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-yasnippet" "\
`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook \\='js-mode-hook
            (lambda ()
              (set (make-local-variable \\='company-backends)
                   \\='((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push \\='(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") \\='company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-yasnippet" '("company-yasnippet-"))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20210611.1224/company-pkg.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; company-autoloads.el ends here
