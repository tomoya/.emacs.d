;;; lsp-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "lsp-ada" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-ada.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-ada.el

(register-definition-prefixes "lsp-ada" '("lsp-ada-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-angular"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-angular.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-angular.el

(register-definition-prefixes "lsp-angular" '("lsp-client"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-bash" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-bash.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-bash.el

(register-definition-prefixes "lsp-bash" '("lsp-bash-"))

;;;***

;;;### (autoloads nil "lsp-clangd" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-clangd.el"
;;;;;;  "da34cd71cb285f38b2c34765996e4dd9")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-clangd.el

(autoload 'lsp-cpp-flycheck-clang-tidy-error-explainer "lsp-clangd" "\
Explain a clang-tidy ERROR by scraping documentation from llvm.org.

\(fn ERROR)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-clangd" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-clangd.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-clangd.el

(register-definition-prefixes "lsp-clangd" '("lsp-c"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-clojure"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-clojure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-clojure.el

(register-definition-prefixes "lsp-clojure" '("lsp-clojure-"))

;;;***

;;;### (autoloads nil "lsp-completion" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-completion.el"
;;;;;;  "fa3d55298adb49d391e4cae8a3615eb7")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-completion.el

(define-obsolete-variable-alias 'lsp-prefer-capf 'lsp-completion-provider "lsp-mode 7.0.1")

(autoload 'lsp-completion-at-point "lsp-completion" "\
Get lsp completions." nil nil)

(autoload 'lsp-completion--enable "lsp-completion" "\
Enable LSP completion support." nil nil)

(autoload 'lsp-completion-mode "lsp-completion" "\
Toggle LSP completion support.

If called interactively, enable Lsp-Completion mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(add-hook 'lsp-configure-hook (lambda nil (when (and lsp-auto-configure lsp-completion-enable) (lsp-completion--enable))))

;;;### (autoloads "actual autoloads are elsewhere" "lsp-completion"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-completion.el

(register-definition-prefixes "lsp-completion" '("lsp-completion-"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-crystal"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-crystal.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-crystal.el

(register-definition-prefixes "lsp-crystal" '("lsp-clients-crystal-executable"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-csharp" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-csharp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-csharp.el

(register-definition-prefixes "lsp-csharp" '("lsp-csharp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-css" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-css.el

(register-definition-prefixes "lsp-css" '("lsp-css-"))

;;;***

;;;### (autoloads nil "lsp-diagnostics" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-diagnostics.el"
;;;;;;  "768cabf8da4e531cfc8903475dac2830")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-diagnostics.el

(define-obsolete-variable-alias 'lsp-diagnostic-package 'lsp-diagnostics-provider "lsp-mode 7.0.1")

(define-obsolete-variable-alias 'lsp-flycheck-default-level 'lsp-diagnostics-flycheck-default-level "lsp-mode 7.0.1")

(autoload 'lsp-diagnostics--enable "lsp-diagnostics" "\
Enable LSP checker support." nil nil)

(autoload 'lsp-diagnostics-mode "lsp-diagnostics" "\
Toggle LSP diagnostics integration.

If called interactively, enable Lsp-Diagnostics mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(add-hook 'lsp-configure-hook (lambda nil (when lsp-auto-configure (lsp-diagnostics--enable))))

;;;### (autoloads "actual autoloads are elsewhere" "lsp-diagnostics"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-diagnostics.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-diagnostics.el

(register-definition-prefixes "lsp-diagnostics" '("lsp-diagnostics-"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-dockerfile"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-dockerfile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-dockerfile.el

(register-definition-prefixes "lsp-dockerfile" '("lsp-dockerfile-language-server-command"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-elixir" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-elixir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-elixir.el

(register-definition-prefixes "lsp-elixir" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-elm" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-elm.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-elm.el

(register-definition-prefixes "lsp-elm" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-erlang" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-erlang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-erlang.el

(register-definition-prefixes "lsp-erlang" '("lsp-erlang-server-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-eslint" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-eslint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-eslint.el

(register-definition-prefixes "lsp-eslint" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-fortran"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-fortran.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-fortran.el

(register-definition-prefixes "lsp-fortran" '("lsp-clients-"))

;;;***

;;;### (autoloads nil "lsp-fsharp" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-fsharp.el"
;;;;;;  "04f83808944ba348a78fd84a02aa9ce0")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-fsharp.el

(autoload 'lsp-fsharp--workspace-load "lsp-fsharp" "\
Load all of the provided PROJECTS.

\(fn PROJECTS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-fsharp" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-fsharp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-fsharp.el

(register-definition-prefixes "lsp-fsharp" '("lsp-fsharp-"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-gdscript"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-gdscript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-gdscript.el

(register-definition-prefixes "lsp-gdscript" '("lsp-gdscript-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-go" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-go.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-go.el

(register-definition-prefixes "lsp-go" '("lsp-go-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-groovy" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-groovy.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-groovy.el

(register-definition-prefixes "lsp-groovy" '("lsp-groovy-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-hack" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-hack.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-hack.el

(register-definition-prefixes "lsp-hack" '("lsp-clients-hack-command"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-haxe" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-haxe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-haxe.el

(register-definition-prefixes "lsp-haxe" '("lsp-"))

;;;***

;;;### (autoloads nil "lsp-headerline" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-headerline.el"
;;;;;;  "2de8be78e767bb612920f37d77761012")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-headerline.el

(autoload 'lsp-headerline-breadcrumb-mode "lsp-headerline" "\
Toggle breadcrumb on headerline.

If called interactively, enable Lsp-Headerline-Breadcrumb mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'lsp-breadcrumb-go-to-symbol "lsp-headerline" "\
Go to the symbol on breadcrumb at SYMBOL-POSITION.

\(fn SYMBOL-POSITION)" t nil)

(autoload 'lsp-breadcrumb-narrow-to-symbol "lsp-headerline" "\
Narrow to the symbol range on breadcrumb at SYMBOL-POSITION.

\(fn SYMBOL-POSITION)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-headerline"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-headerline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-headerline.el

(register-definition-prefixes "lsp-headerline" '("lsp-headerline-"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-html" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-html.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-html.el

(register-definition-prefixes "lsp-html" '("lsp-html-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-javascript"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-javascript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-javascript.el

(register-definition-prefixes "lsp-javascript" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-json" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-json.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-json.el

(register-definition-prefixes "lsp-json" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-kotlin" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-kotlin.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-kotlin.el

(register-definition-prefixes "lsp-kotlin" '("lsp-"))

;;;***

;;;### (autoloads nil "lsp-lens" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-lens.el"
;;;;;;  "dd9108dc203000eb631595b350b0e4f2")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-lens.el

(autoload 'lsp-lens-show "lsp-lens" "\
Display lenses in the buffer." t nil)

(autoload 'lsp-lens-hide "lsp-lens" "\
Delete all lenses." t nil)

(autoload 'lsp-lens-mode "lsp-lens" "\
Toggle code-lens overlays.

If called interactively, enable Lsp-Lens mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'lsp-avy-lens "lsp-lens" "\
Click lsp lens using `avy' package." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-lens" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-lens.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-lens.el

(register-definition-prefixes "lsp-lens" '("lsp-lens-"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-lua" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-lua.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-lua.el

(register-definition-prefixes "lsp-lua" '("lsp-clients-"))

;;;***

;;;### (autoloads nil "lsp-mode" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-mode.el"
;;;;;;  "48bc5b67b0370fb10d90365b67276150")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-mode.el
(put 'lsp-enable-file-watchers 'safe-local-variable #'booleanp)
(put 'lsp-file-watch-threshold 'safe-local-variable (lambda (i) (or (numberp i) (not i))))

(autoload 'lsp "lsp-mode" "\
Entry point for the server startup.
When ARG is t the lsp mode will start new language server even if
there is language server which can handle current language. When
ARG is nil current file will be opened in multi folder language
server if there is such. When `lsp' is called with prefix
argument ask the user to select which language server to start. 

\(fn &optional ARG)" t nil)

(autoload 'lsp-deferred "lsp-mode" "\
Entry point that defers server startup until buffer is visible.
`lsp-deferred' will wait until the buffer is visible before invoking `lsp'.
This avoids overloading the server with many files when starting Emacs." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-mode" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-mode.el

(register-definition-prefixes "lsp-mode" '("lsp-" "make-lsp-client" "when-lsp-workspace" "with-lsp-workspace"))

;;;***

;;;***

;;;### (autoloads nil "lsp-modeline" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-modeline.el"
;;;;;;  "efc566518dd402714cc8daccd8a2c5bc")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-modeline.el

(define-obsolete-variable-alias 'lsp-diagnostics-modeline-scope 'lsp-modeline-diagnostics-scope "lsp-mode 7.0.1")

(autoload 'lsp-modeline-code-actions-mode "lsp-modeline" "\
Toggle code actions on modeline.

If called interactively, enable Lsp-Modeline-Code-Actions mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(define-obsolete-function-alias 'lsp-diagnostics-modeline-mode 'lsp-modeline-diagnostics-mode "lsp-mode 7.0.1")

(autoload 'lsp-modeline-diagnostics-mode "lsp-modeline" "\
Toggle diagnostics modeline.

If called interactively, enable Lsp-Modeline-Diagnostics mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "lsp-modeline"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-modeline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-modeline.el

(register-definition-prefixes "lsp-modeline" '("lsp-"))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-nix" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-nix.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-nix.el

(register-definition-prefixes "lsp-nix" '("lsp-nix-server-path"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-ocaml" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-ocaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-ocaml.el

(register-definition-prefixes "lsp-ocaml" '("lsp-ocaml-l"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-perl" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-perl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-perl.el

(register-definition-prefixes "lsp-perl" '("lsp-perl-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-php" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-php.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-php.el

(register-definition-prefixes "lsp-php" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-prolog" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-prolog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-prolog.el

(register-definition-prefixes "lsp-prolog" '("lsp-prolog-server-command"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-protocol"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-protocol.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-protocol.el

(register-definition-prefixes "lsp-protocol" '("dash-expand:&RangeToPoint" "lsp"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-purescript"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-purescript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-purescript.el

(register-definition-prefixes "lsp-purescript" '("lsp-purescript-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-pwsh" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-pwsh.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-pwsh.el

(register-definition-prefixes "lsp-pwsh" '("lsp-pwsh-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-pyls" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-pyls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-pyls.el

(register-definition-prefixes "lsp-pyls" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-r" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-r.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-r.el

(register-definition-prefixes "lsp-r" '("lsp-clients-r-server-command"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-racket" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-racket.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-racket.el

(register-definition-prefixes "lsp-racket" '("lsp-racket-lang"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-rf" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-rf.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-rf.el

(register-definition-prefixes "lsp-rf" '("expand-start-command" "lsp-rf-language-server-" "parse-rf-language-server-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-rust" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-rust.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-rust.el

(register-definition-prefixes "lsp-rust" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-solargraph"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-solargraph.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-solargraph.el

(register-definition-prefixes "lsp-solargraph" '("lsp-solargraph-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-sqls" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-sqls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-sqls.el

(register-definition-prefixes "lsp-sqls" '("lsp-sqls-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-terraform"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-terraform.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-terraform.el

(register-definition-prefixes "lsp-terraform" '("lsp-terraform-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-tex" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-tex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-tex.el

(register-definition-prefixes "lsp-tex" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-verilog"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-verilog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-verilog.el

(register-definition-prefixes "lsp-verilog" '("lsp-clients-verilog-executable"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-vetur" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-vetur.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-vetur.el

(register-definition-prefixes "lsp-vetur" '("lsp-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-vhdl" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-vhdl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-vhdl.el

(register-definition-prefixes "lsp-vhdl" '("ghdl-ls-bin-name" "hdl-checker-bin-name" "lsp-vhdl-" "vhdl-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-vimscript"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-vimscript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-vimscript.el

(register-definition-prefixes "lsp-vimscript" '("lsp-clients-vim-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-xml" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-xml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-xml.el

(register-definition-prefixes "lsp-xml" '("lsp-xml-"))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "lsp-yaml" "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-yaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-yaml.el

(register-definition-prefixes "lsp-yaml" '("lsp-yaml-"))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-ada.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-angular.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-bash.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-clangd.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-clojure.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-cmake.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-completion.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-crystal.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-csharp.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-css.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-dhall.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-diagnostics.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-dockerfile.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-elixir.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-elm.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-erlang.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-eslint.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-fortran.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-fsharp.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-gdscript.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-go.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-groovy.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-hack.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-haxe.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-headerline.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-html.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-javascript.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-json.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-kotlin.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-lens.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-lua.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-mode-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-mode-pkg.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-mode.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-modeline.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-nim.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-nix.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-ocaml.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-perl.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-php.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-prolog.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-protocol.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-purescript.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-pwsh.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-pyls.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-r.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-racket.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-rf.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-rust.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-solargraph.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-sqls.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-svelte.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-terraform.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-tex.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-verilog.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-vetur.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-vhdl.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-vimscript.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-xml.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp-yaml.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/lsp-mode-20200911.1432/lsp.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lsp-mode-autoloads.el ends here
