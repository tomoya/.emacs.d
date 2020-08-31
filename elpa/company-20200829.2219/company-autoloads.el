;;; company-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "company" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company.el"
;;;;;;  "c0a36c0d82c2ba5557d17d4f3b35c3b3")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company.el

(autoload 'company-mode "company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

If called interactively, enable Company mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

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

(custom-autoload 'global-company-mode "company" nil)

(autoload 'global-company-mode "company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

(autoload 'company-manual-begin "company" nil t nil)

(autoload 'company-complete "company" "\
Insert the common part of all candidates or the current selection.
The first time this is called, the common part is inserted, the second
time, or when the selection has been changed, the selected candidate is
inserted." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company.el

(register-definition-prefixes "company" '("company-"))

;;;***

;;;***

;;;### (autoloads nil "company-abbrev" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-abbrev.el"
;;;;;;  "5c53bd58b979c8d570d3e6f0f4e35579")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-abbrev.el

(autoload 'company-abbrev "company-abbrev" "\
`company-mode' completion backend for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-abbrev"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-abbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-abbrev.el

(register-definition-prefixes "company-abbrev" '("company-abbrev-insert"))

;;;***

;;;***

;;;### (autoloads nil "company-bbdb" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-bbdb.el"
;;;;;;  "a45e0ae40074765c5de148460d742142")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-bbdb.el

(autoload 'company-bbdb "company-bbdb" "\
`company-mode' completion backend for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-bbdb"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-bbdb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-bbdb.el

(register-definition-prefixes "company-bbdb" '("company-bbdb-"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "company-capf"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-capf.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-capf.el

(register-definition-prefixes "company-capf" '("company-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "company-clang"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-clang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-clang.el

(register-definition-prefixes "company-clang" '("company-clang"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "company-cmake"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-cmake.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-cmake.el

(register-definition-prefixes "company-cmake" '("company-cmake"))

;;;***

;;;### (autoloads nil "company-css" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-css.el"
;;;;;;  "08908e649d5189c7a96e7e95c2bfdbff")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-css.el

(autoload 'company-css "company-css" "\
`company-mode' completion backend for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-css"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-css.el

(register-definition-prefixes "company-css" '("company-css-"))

;;;***

;;;***

;;;### (autoloads nil "company-dabbrev" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev.el"
;;;;;;  "789a195f95ddb9581c6b48f67a1e2d6c")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev.el

(autoload 'company-dabbrev "company-dabbrev" "\
dabbrev-like `company-mode' completion backend.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-dabbrev"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev.el

(register-definition-prefixes "company-dabbrev" '("company-dabbrev-"))

;;;***

;;;***

;;;### (autoloads nil "company-dabbrev-code" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev-code.el"
;;;;;;  "48580f10fbb5c8b3aadae36f968ae8f5")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-dabbrev-code" "\
dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-dabbrev-code"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev-code.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev-code.el

(register-definition-prefixes "company-dabbrev-code" '("company-dabbrev-code-"))

;;;***

;;;***

;;;### (autoloads nil "company-elisp" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-elisp.el"
;;;;;;  "37dc6d9a70d7c716c823e52868eb1293")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-elisp.el

(autoload 'company-elisp "company-elisp" "\
`company-mode' completion backend for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-elisp"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-elisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-elisp.el

(register-definition-prefixes "company-elisp" '("company-elisp-"))

;;;***

;;;***

;;;### (autoloads nil "company-etags" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-etags.el"
;;;;;;  "8594d62ca3f76d6bca1c70d3adc9dccb")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-etags.el

(autoload 'company-etags "company-etags" "\
`company-mode' completion backend for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-etags"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-etags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-etags.el

(register-definition-prefixes "company-etags" '("company-etags-"))

;;;***

;;;***

;;;### (autoloads nil "company-files" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-files.el"
;;;;;;  "0bd4c3970c189e5cc7ce2078347176fe")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-files.el

(autoload 'company-files "company-files" "\
`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-files"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-files.el

(register-definition-prefixes "company-files" '("company-file"))

;;;***

;;;***

;;;### (autoloads nil "company-gtags" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-gtags.el"
;;;;;;  "f690d1989ec1fc8061c0caeefb8cad6c")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-gtags.el

(autoload 'company-gtags "company-gtags" "\
`company-mode' completion backend for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-gtags"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-gtags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-gtags.el

(register-definition-prefixes "company-gtags" '("company-gtags-"))

;;;***

;;;***

;;;### (autoloads nil "company-ispell" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-ispell.el"
;;;;;;  "40ad97c8f82cc4fbdb17da0b429e5397")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-ispell.el

(autoload 'company-ispell "company-ispell" "\
`company-mode' completion backend using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-ispell"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-ispell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-ispell.el

(register-definition-prefixes "company-ispell" '("company-ispell-"))

;;;***

;;;***

;;;### (autoloads nil "company-keywords" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-keywords.el"
;;;;;;  "79a00d9acfb11b20646caa237d66a029")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-keywords.el

(autoload 'company-keywords "company-keywords" "\
`company-mode' backend for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-keywords"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-keywords.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-keywords.el

(register-definition-prefixes "company-keywords" '("company-keywords-"))

;;;***

;;;***

;;;### (autoloads nil "company-nxml" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-nxml.el"
;;;;;;  "296292d9e829c7cd40fcf0566f085ed8")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-nxml.el

(autoload 'company-nxml "company-nxml" "\
`company-mode' completion backend for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-nxml"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-nxml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-nxml.el

(register-definition-prefixes "company-nxml" '("company-nxml-"))

;;;***

;;;***

;;;### (autoloads nil "company-oddmuse" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-oddmuse.el"
;;;;;;  "4d585ed74b0f1654770bb4486c5554da")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-oddmuse.el

(autoload 'company-oddmuse "company-oddmuse" "\
`company-mode' completion backend for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-oddmuse"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-oddmuse.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-oddmuse.el

(register-definition-prefixes "company-oddmuse" '("company-oddmuse-"))

;;;***

;;;***

;;;### (autoloads nil "company-semantic" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-semantic.el"
;;;;;;  "905ad8450f74fcdff3855d8544a47bfe")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-semantic.el

(autoload 'company-semantic "company-semantic" "\
`company-mode' completion backend using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-semantic"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-semantic.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-semantic.el

(register-definition-prefixes "company-semantic" '("company-semantic-"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "company-template"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-template.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-template.el

(register-definition-prefixes "company-template" '("company-template-"))

;;;***

;;;### (autoloads nil "company-tempo" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tempo.el"
;;;;;;  "ef7bf243940ad89d1f44ecffcfa3949c")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tempo.el

(autoload 'company-tempo "company-tempo" "\
`company-mode' completion backend for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-tempo"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tempo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tempo.el

(register-definition-prefixes "company-tempo" '("company-tempo-"))

;;;***

;;;***

;;;### (autoloads nil "company-tng" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tng.el"
;;;;;;  "d35a7b399e5238195ba8eac86c5ab094")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tng.el

(autoload 'company-tng-frontend "company-tng" "\
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

(custom-autoload 'company-tng-mode "company-tng" nil)

(autoload 'company-tng-mode "company-tng" "\
This minor mode enables `company-tng-frontend'.

If called interactively, enable Company-Tng mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-tng"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tng.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tng.el

(register-definition-prefixes "company-tng" '("company-tng-"))

;;;***

;;;***

;;;### (autoloads nil "company-yasnippet" "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-yasnippet.el"
;;;;;;  "441999fbbc2ef58e47f3f0d5cab7f8df")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-yasnippet.el

(autoload 'company-yasnippet "company-yasnippet" "\
`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "company-yasnippet"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-yasnippet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-yasnippet.el

(register-definition-prefixes "company-yasnippet" '("company-yasnippet-"))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-abbrev.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-bbdb.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-capf.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-clang.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-cmake.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-css.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev-code.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-dabbrev.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-elisp.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-etags.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-files.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-gtags.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-ispell.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-keywords.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-nxml.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-oddmuse.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-pkg.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-semantic.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-template.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tempo.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-tng.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company-yasnippet.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/company-20200829.2219/company.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; company-autoloads.el ends here
