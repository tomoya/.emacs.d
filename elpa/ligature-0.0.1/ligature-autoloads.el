;;; ligature-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ligature" "../../../../../../../../../.config/emacs/elpa/ligature-0.0.1/ligature.el"
;;;;;;  "509ddd08f8486e6c583604e7759f04f5")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/ligature-0.0.1/ligature.el

(autoload 'ligature-set-ligatures "ligature" "\
Replace LIGATURES in MODES.

Converts a list of LIGATURES, where each element is either a cons
cell of `(STR-CHAR . REGEXP)' or a string to ligate, for all
modes in MODES.  As there is no easy way of computing which
ligatures were already defined, this function will replace any
existing ligature definitions in `ligature-composition-table'
with LIGATURES for MODES.


Some ligatures are variable-length, such as arrows and borders,
and need a regular expression to accurately represent the range
of characters needed to ligate them.  In that case, you must use a
cons cell of `(STR-CHAR . REGEXP)' where `STR-CHR' is the first
character in the ligature and `REGEXP' is a regular expression
that matches the _rest_ of the ligature range.

For examples, see the commentary in `ligature.el'.

\(fn MODES LIGATURES)" nil nil)

(autoload 'ligature-generate-ligatures "ligature" "\
Ligate the current buffer using its major mode to determine ligature sets.

The ligature generator traverses `ligature-composition-table' and
applies every ligature definition from every mode that matches
either `t' (indicating that a ligature mapping always applies);
or a major mode or list of major mode symbols that are
`derived-mode-p' of the current buffer's major mode.

The changes are then made buffer-local." t nil)

(autoload 'ligature-mode "ligature" "\
Enables typographic ligatures

If called interactively, enable Ligature mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ligature" "../../../../../../../../../.config/emacs/elpa/ligature-0.0.1/ligature.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/ligature-0.0.1/ligature.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ligature" '("global-ligature-mode" "ligature-" "turn-on-ligature-mode")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/ligature-0.0.1/ligature-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/ligature-0.0.1/ligature.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ligature-autoloads.el ends here
