;;; smartparens-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "smartparens" "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens.el"
;;;;;;  "c20b68b95fe5776606a38d95223dbcfd")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens.el

(autoload 'sp-cheat-sheet "smartparens" "\
Generate a cheat sheet of all the smartparens interactive functions.

Without a prefix argument, print only the short documentation and examples.

With non-nil prefix argument ARG, show the full documentation for each function.

You can follow the links to the function or variable help page.
To get back to the full list, use \\[help-go-back].

You can use `beginning-of-defun' and `end-of-defun' to jump to
the previous/next entry.

Examples are fontified using the `font-lock-string-face' for
better orientation.

\(fn &optional ARG)" t nil)

(defvar smartparens-mode-map (make-sparse-keymap) "\
Keymap used for `smartparens-mode'.")

(autoload 'sp-use-paredit-bindings "smartparens" "\
Initiate `smartparens-mode-map' with `sp-paredit-bindings'." t nil)

(autoload 'sp-use-smartparens-bindings "smartparens" "\
Initiate `smartparens-mode-map' with `sp-smartparens-bindings'." t nil)

(autoload 'smartparens-mode "smartparens" "\
Toggle smartparens mode.

If called interactively, enable Smartparens mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

You can enable pre-set bindings by customizing
`sp-base-key-bindings' variable.  The current content of
`smartparens-mode-map' is:

 \\{smartparens-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'smartparens-strict-mode "smartparens" "\
Toggle the strict smartparens mode.

If called interactively, enable Smartparens-Strict mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

When strict mode is active, `delete-char', `kill-word' and their
backward variants will skip over the pair delimiters in order to
keep the structure always valid (the same way as `paredit-mode'
does).  This is accomplished by remapping them to
`sp-delete-char' and `sp-kill-word'.  There is also function
`sp-kill-symbol' that deletes symbols instead of words, otherwise
working exactly the same (it is not bound to any key by default).

When strict mode is active, this is indicated with \"/s\"
after the smartparens indicator in the mode list.

\(fn &optional ARG)" t nil)

(put 'smartparens-global-strict-mode 'globalized-minor-mode t)

(defvar smartparens-global-strict-mode nil "\
Non-nil if Smartparens-Global-Strict mode is enabled.
See the `smartparens-global-strict-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-strict-mode'.")

(custom-autoload 'smartparens-global-strict-mode "smartparens" nil)

(autoload 'smartparens-global-strict-mode "smartparens" "\
Toggle Smartparens-Strict mode in all buffers.
With prefix ARG, enable Smartparens-Global-Strict mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smartparens-Strict mode is enabled in all buffers where
`turn-on-smartparens-strict-mode' would do it.
See `smartparens-strict-mode' for more information on Smartparens-Strict mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-smartparens-strict-mode "smartparens" "\
Turn on `smartparens-strict-mode'." t nil)

(autoload 'turn-off-smartparens-strict-mode "smartparens" "\
Turn off `smartparens-strict-mode'." t nil)

(put 'smartparens-global-mode 'globalized-minor-mode t)

(defvar smartparens-global-mode nil "\
Non-nil if Smartparens-Global mode is enabled.
See the `smartparens-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smartparens-global-mode'.")

(custom-autoload 'smartparens-global-mode "smartparens" nil)

(autoload 'smartparens-global-mode "smartparens" "\
Toggle Smartparens mode in all buffers.
With prefix ARG, enable Smartparens-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smartparens mode is enabled in all buffers where
`turn-on-smartparens-mode' would do it.
See `smartparens-mode' for more information on Smartparens mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-smartparens-mode "smartparens" "\
Turn on `smartparens-mode'.

This function is used to turn on `smartparens-global-mode'.

By default `smartparens-global-mode' ignores buffers with
`mode-class' set to special, but only if they are also not comint
buffers.

Additionally, buffers on `sp-ignore-modes-list' are ignored.

You can still turn on smartparens in these mode manually (or
in mode's startup-hook etc.) by calling `smartparens-mode'." t nil)

(autoload 'turn-off-smartparens-mode "smartparens" "\
Turn off `smartparens-mode'." t nil)

(autoload 'show-smartparens-mode "smartparens" "\
Toggle visualization of matching pairs.  When enabled, any
matching pair is highlighted after `sp-show-pair-delay' seconds
of Emacs idle time if the point is immediately in front or after
a pair.  This mode works similarly to `show-paren-mode', but
support custom pairs.

If called interactively, enable Show-Smartparens mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'show-smartparens-global-mode 'globalized-minor-mode t)

(defvar show-smartparens-global-mode nil "\
Non-nil if Show-Smartparens-Global mode is enabled.
See the `show-smartparens-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `show-smartparens-global-mode'.")

(custom-autoload 'show-smartparens-global-mode "smartparens" nil)

(autoload 'show-smartparens-global-mode "smartparens" "\
Toggle Show-Smartparens mode in all buffers.
With prefix ARG, enable Show-Smartparens-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Show-Smartparens mode is enabled in all buffers where
`turn-on-show-smartparens-mode' would do it.
See `show-smartparens-mode' for more information on Show-Smartparens mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-show-smartparens-mode "smartparens" "\
Turn on `show-smartparens-mode'." t nil)

(autoload 'turn-off-show-smartparens-mode "smartparens" "\
Turn off `show-smartparens-mode'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "smartparens"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens" '("smartparens-" "sp-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-clojure"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-clojure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-clojure.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-clojure" '("sp-clojure-prefix")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-config"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-config.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-config.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-config" '("sp-lisp-invalid-hyperlink-p")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-crystal"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-crystal.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-crystal.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-crystal" '("sp-crystal-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-elixir"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-elixir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-elixir.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-elixir" '("sp-elixir-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-ess"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-ess.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-ess.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-ess" '("sp-ess-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-haskell"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-haskell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-haskell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-haskell" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-html"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-html.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-html.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-html" '("sp-html-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-latex"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-latex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-latex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-latex" '("sp-latex-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-lua"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-lua.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-lua.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-lua" '("sp-lua-post-keyword-insert")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-markdown"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-markdown.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-markdown.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-markdown" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-org"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-org.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-org.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-org" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-python"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-python.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-python.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-python" '("sp-python-fix-tripple-quotes")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-rst"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-rst.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-rst.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-rst" '("sp-rst-point-after-backtick")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-ruby"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-ruby.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-ruby.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-ruby" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-rust"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-rust.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-rust.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-rust" '("sp-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-scala"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-scala.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-scala.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-scala" '("sp-scala-wrap-with-indented-newlines")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "smartparens-text"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-text.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-text.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smartparens-text" '("sp-text-mode-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-c.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-clojure.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-config.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-crystal.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-elixir.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-ess.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-haskell.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-html.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-javascript.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-latex.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-lua.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-markdown.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-ml.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-org.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-pkg.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-python.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-racket.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-rst.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-ruby.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-rust.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-scala.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens-text.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/smartparens-20201113.951/smartparens.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; smartparens-autoloads.el ends here
