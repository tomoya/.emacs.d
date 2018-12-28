;;; helm-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-adaptive" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-adaptive.el"
;;;;;;  "5cfa61253ccc27b3728f9c5646eb2510")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-adaptive.el

(defvar helm-adaptive-mode nil "\
Non-nil if Helm-Adaptive mode is enabled.
See the `helm-adaptive-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-adaptive-mode'.")

(custom-autoload 'helm-adaptive-mode "helm-adaptive" nil)

(autoload 'helm-adaptive-mode "helm-adaptive" "\
Toggle adaptive sorting in all sources.

If called interactively, enable Helm-Adaptive mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'helm-reset-adaptive-history "helm-adaptive" "\
Delete all `helm-adaptive-history' and his file.
Useful when you have a old or corrupted `helm-adaptive-history-file'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-adaptive"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-adaptive.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-adaptive.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-adaptive" '("helm-adapt")))

;;;***

;;;***

;;;### (autoloads nil "helm-bookmark" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-bookmark.el"
;;;;;;  "8c8de81b84a61b1b23bcdc8faa215f97")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-bookmark.el

(autoload 'helm-bookmarks "helm-bookmark" "\
Preconfigured `helm' for bookmarks.

\(fn)" t nil)

(autoload 'helm-filtered-bookmarks "helm-bookmark" "\
Preconfigured helm for bookmarks (filtered by category).
Optional source `helm-source-bookmark-addressbook' is loaded
only if external addressbook-bookmark package is installed.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-bookmark"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-bookmark.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-bookmark.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-bookmark" '("bmkext-jump-" "bookmark" "helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-buffers" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-buffers.el"
;;;;;;  "829bd8c3e8e20a35638352c2c94d802e")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-buffers.el

(autoload 'helm-buffers-list "helm-buffers" "\
Preconfigured `helm' to list buffers.

\(fn)" t nil)

(autoload 'helm-mini "helm-buffers" "\
Preconfigured `helm' lightweight version (buffer -> recentf).

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-buffers"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-buffers.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-buffers.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-buffers" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-color" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-color.el"
;;;;;;  "2233cd0f4b5c8a7498037a68ab87785a")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-color.el

(autoload 'helm-colors "helm-color" "\
Preconfigured `helm' for color.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-color" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-color.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-color.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-color" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-command" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-command.el"
;;;;;;  "c95c0a99f3a1071d44f5b062b3d49fc0")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-command.el

(autoload 'helm-M-x "helm-command" "\
Preconfigured `helm' for Emacs commands.
It is `helm' replacement of regular `M-x' `execute-extended-command'.

Unlike regular `M-x' emacs vanilla `execute-extended-command' command,
the prefix args if needed, can be passed AFTER starting `helm-M-x'.
When a prefix arg is passed BEFORE starting `helm-M-x', the first `C-u'
while in `helm-M-x' session will disable it.

You can get help on each command by persistent action.

\(fn ARG &optional COMMAND-NAME)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-command"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-command.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-command.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-command" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-config" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-config.el"
;;;;;;  "6fb5ac5b594fac0dd2adabd379938493")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-config.el

(autoload 'helm-configuration "helm-config" "\
Customize `helm'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-config"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-config.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-config.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-config" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-dabbrev" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-dabbrev.el"
;;;;;;  "5f6fb34b393c5f464eabd7bcbdd24806")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-dabbrev.el

(autoload 'helm-dabbrev "helm-dabbrev" "\
Preconfigured helm for dynamic abbreviations.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-dabbrev"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-dabbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-dabbrev.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-dabbrev" '("helm-dabbrev-")))

;;;***

;;;***

;;;### (autoloads nil "helm-elisp" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp.el"
;;;;;;  "d0c8881b2fb106925765e74a58e11026")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp.el

(autoload 'helm-lisp-completion-at-point "helm-elisp" "\
Preconfigured helm for lisp symbol completion at point.

\(fn)" t nil)

(autoload 'helm-complete-file-name-at-point "helm-elisp" "\
Preconfigured helm to complete file name at point.

\(fn &optional FORCE)" t nil)

(autoload 'helm-lisp-indent "helm-elisp" "\


\(fn)" t nil)

(autoload 'helm-lisp-completion-or-file-name-at-point "helm-elisp" "\
Preconfigured helm to complete lisp symbol or filename at point.
Filename completion happen if string start after or between a double quote.

\(fn)" t nil)

(autoload 'helm-apropos "helm-elisp" "\
Preconfigured helm to describe commands, functions, variables and faces.
In non interactives calls DEFAULT argument should be provided as a string,
i.e the `symbol-name' of any existing symbol.

\(fn DEFAULT)" t nil)

(autoload 'helm-manage-advice "helm-elisp" "\
Preconfigured `helm' to disable/enable function advices.

\(fn)" t nil)

(autoload 'helm-locate-library "helm-elisp" "\
Preconfigured helm to locate elisp libraries.

\(fn)" t nil)

(autoload 'helm-timers "helm-elisp" "\
Preconfigured `helm' for timers.

\(fn)" t nil)

(autoload 'helm-complex-command-history "helm-elisp" "\
Preconfigured helm for complex command history.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-elisp" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-elisp" '("helm-" "with-helm-show-completion")))

;;;***

;;;***

;;;### (autoloads nil "helm-elisp-package" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp-package.el"
;;;;;;  "3542f8d07f9abaa4403c78047c894483")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp-package.el

(autoload 'helm-list-elisp-packages "helm-elisp-package" "\
Preconfigured helm for listing and handling emacs packages.

\(fn ARG)" t nil)

(autoload 'helm-list-elisp-packages-no-fetch "helm-elisp-package" "\
Preconfigured helm for emacs packages.

Same as `helm-list-elisp-packages' but don't fetch packages on remote.
Called with a prefix ARG always fetch packages on remote.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-elisp-package"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp-package.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp-package.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-elisp-package" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-eshell" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eshell.el"
;;;;;;  "7648df09f27dde33039247f2195fc702")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eshell.el

(autoload 'helm-esh-pcomplete "helm-eshell" "\
Preconfigured helm to provide helm completion in eshell.

\(fn)" t nil)

(autoload 'helm-eshell-history "helm-eshell" "\
Preconfigured helm for eshell history.

\(fn)" t nil)

(autoload 'helm-eshell-prompts "helm-eshell" "\
Pre-configured `helm' to browse the prompts of the current Eshell.

\(fn)" t nil)

(autoload 'helm-eshell-prompts-all "helm-eshell" "\
Pre-configured `helm' to browse the prompts of all Eshell sessions.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-eshell"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eshell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eshell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-eshell" '("helm-e")))

;;;***

;;;***

;;;### (autoloads nil "helm-eval" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eval.el"
;;;;;;  "f0288e5f6b3f045edb86b6b6a7c27ba0")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eval.el

(autoload 'helm-eval-expression "helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result'.

\(fn ARG)" t nil)

(autoload 'helm-eval-expression-with-eldoc "helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result' with `eldoc' support. 

\(fn)" t nil)

(autoload 'helm-calcul-expression "helm-eval" "\
Preconfigured helm for `helm-source-calculation-result'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-eval" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eval.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eval.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-eval" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-external" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-external.el"
;;;;;;  "e1c63581d709dba68ed65ca72b72e8cf")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-external.el

(autoload 'helm-run-external-command "helm-external" "\
Preconfigured `helm' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`helm-external-commands-list'.

\(fn PROGRAM)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-external"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-external.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-external.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-external" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-files" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-files.el"
;;;;;;  "4bda5ec2c300037ccb1e14a920d98324")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-files.el

(autoload 'helm-projects-history "helm-files" "\


\(fn)" t nil)

(autoload 'helm-browse-project "helm-files" "\
Preconfigured helm to browse projects.
Browse files and see status of project with its vcs.
Only HG and GIT are supported for now.
Fall back to `helm-browse-project-find-files'
if current directory is not under control of one of those vcs.
With a prefix ARG browse files recursively, with two prefix ARG
rebuild the cache.
If the current directory is found in the cache, start
`helm-browse-project-find-files' even with no prefix ARG.
NOTE: The prefix ARG have no effect on the VCS controlled directories.

Needed dependencies for VCS:
<https://github.com/emacs-helm/helm-ls-git>
and
<https://github.com/emacs-helm/helm-ls-hg>.

\(fn ARG)" t nil)

(autoload 'helm-find-files "helm-files" "\
Preconfigured `helm' for helm implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `helm-find-files-1' instead.
This is the starting point for nearly all actions you can do on files.

\(fn ARG)" t nil)

(autoload 'helm-delete-tramp-connection "helm-files" "\
Allow deleting tramp connection or marked tramp connections at once.

This replace `tramp-cleanup-connection' which is partially broken in
emacs < to 25.1.50.1 (See Emacs Bug#24432).

It allows additionally to delete more than one connection at once.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-files" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-files.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-files" '("eshell-command-aliases-list" "helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-find" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-find.el"
;;;;;;  "bf539367271ee6c22246f04ade6df824")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-find.el

(autoload 'helm-find "helm-find" "\
Preconfigured `helm' for the find shell command.

Recursively find files whose names are matched by all specified
globbing PATTERNs under the current directory using the external
program specified in `find-program' (usually \"find\").  Every
input PATTERN is silently wrapped into two stars: *PATTERN*.

With prefix argument, prompt for a directory to search.

When user option `helm-findutils-search-full-path' is non-nil,
match against complete paths, otherwise, against file names
without directory part.

The (possibly empty) list of globbing PATTERNs can be followed by
the separator \"*\" plus any number of additional arguments that
are passed to \"find\" literally.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-find" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-find.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-find.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-find" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-font" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-font.el"
;;;;;;  "b7980f7301e3c9508d1e4beaf93e836d")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-font.el

(autoload 'helm-select-xfont "helm-font" "\
Preconfigured `helm' to select Xfont.

\(fn)" t nil)

(autoload 'helm-ucs "helm-font" "\
Preconfigured helm for `ucs-names'.

Called with a prefix arg force reloading cache.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-font" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-font.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-font.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-font" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-for-files" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-for-files.el"
;;;;;;  "65ce4d6e92aa84abebf987c944671df0")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-for-files.el

(autoload 'helm-for-files "helm-for-files" "\
Preconfigured `helm' for opening files.
Run all sources defined in `helm-for-files-preferred-list'.

\(fn)" t nil)

(autoload 'helm-multi-files "helm-for-files" "\
Preconfigured helm like `helm-for-files' but running locate only on demand.

Allow toggling back and forth from locate to others sources with
`helm-multi-files-toggle-locate-binding' key.
This avoid launching needlessly locate when what you search is already
found.

\(fn)" t nil)

(autoload 'helm-recentf "helm-for-files" "\
Preconfigured `helm' for `recentf'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-for-files"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-for-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-for-files.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-for-files" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-grep" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-grep.el"
;;;;;;  "c779956999c917d25e9bf34d971d09db")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-grep.el

(autoload 'helm-goto-precedent-file "helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-goto-next-file "helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-do-grep-ag "helm-grep" "\
Preconfigured helm for grepping with AG in `default-directory'.
With prefix-arg prompt for type if available with your AG version.

\(fn ARG)" t nil)

(autoload 'helm-grep-do-git-grep "helm-grep" "\
Preconfigured helm for git-grepping `default-directory'.
With a prefix arg ARG git-grep the whole repository.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-grep" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-grep.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-grep.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-grep" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-help" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-help.el"
;;;;;;  "2f0c27f2d36a97dbfaa6e07696a7892c")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-help.el

(autoload 'helm-documentation "helm-help" "\
Preconfigured Helm for Helm documentation.
With a prefix arg refresh the documentation.

Find here the documentation of all documented sources.

\(fn)" t nil)

(defvar helm-comp-read-mode-line "\\<helm-comp-read-map>C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-read-file-name-mode-line-string "\\<helm-read-file-map>\\[helm-help]:Help C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in `helm-source-find-files'.")

(defvar helm-top-mode-line "\\<helm-top-map>\\[helm-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

;;;### (autoloads "actual autoloads are elsewhere" "helm-help" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-help.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-help.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-help" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-id-utils" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-id-utils.el"
;;;;;;  "ef7bb8710ddcd95f4b11cc60f3f0b773")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-id-utils.el

(autoload 'helm-gid "helm-id-utils" "\
Preconfigured helm for `gid' command line of `ID-Utils'.
Need A database created with the command `mkid'
above `default-directory'.
Need id-utils as dependency which provide `mkid', `gid' etc...
See <https://www.gnu.org/software/idutils/>.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-id-utils"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-id-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-id-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-id-utils" '("helm-gid-")))

;;;***

;;;***

;;;### (autoloads nil "helm-imenu" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-imenu.el"
;;;;;;  "8c19b4f6f3be407bb3fb7d41023c0798")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-imenu.el

(autoload 'helm-imenu "helm-imenu" "\
Preconfigured `helm' for `imenu'.

\(fn)" t nil)

(autoload 'helm-imenu-in-all-buffers "helm-imenu" "\
Preconfigured helm for fetching imenu entries in all buffers with similar mode as current.
A mode is similar as current if it is the same, it is derived i.e `derived-mode-p'
or it have an association in `helm-imenu-all-buffer-assoc'.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-imenu" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-imenu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-imenu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-imenu" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-info" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-info.el"
;;;;;;  "fb3cbf770e5011d32d05b8f5b31c2808")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-info.el

(autoload 'helm-info "helm-info" "\
Preconfigured `helm' for searching Info files' indices.

With a prefix argument \\[universal-argument], set REFRESH to non-nil.

Optional parameter REFRESH, when non-nil, reevaluates
`helm-default-info-index-list'.  If the variable has been
customized, set it to its saved value.  If not, set it to its
standard value.  See `custom-reevaluate-setting' for more.

REFRESH is useful when new Info files are installed.  If
`helm-default-info-index-list' has not been customized, the new
Info files are made available.

\(fn &optional REFRESH)" t nil)

(autoload 'helm-info-at-point "helm-info" "\
Preconfigured `helm' for searching info at point.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-info" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-info.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-info.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-info" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-locate" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-locate.el"
;;;;;;  "2f9b969c94d038a9143d622f013e7ab4")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-locate.el

(autoload 'helm-projects-find-files "helm-locate" "\
Find files with locate in `helm-locate-project-list'.
With a prefix arg refresh the database in each project.

\(fn UPDATE)" t nil)

(autoload 'helm-locate "helm-locate" "\
Preconfigured `helm' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options and also `helm-locate-command'.

You can specify a local database with prefix argument ARG.
With two prefix arg, refresh the current local db or create it
if it doesn't exists.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`helm-locate-db-file-regexp'.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-locate"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-locate.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-locate.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-locate" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-man" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-man.el"
;;;;;;  "4978af9f55a090cfe4172d9a1787a79a")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-man.el

(autoload 'helm-man-woman "helm-man" "\
Preconfigured `helm' for Man and Woman pages.
With a prefix arg reinitialize the cache.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-man" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-man.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-man.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-man" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-misc" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-misc.el"
;;;;;;  "519e0e556e8ae5c877e225df7b8620e2")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-misc.el

(autoload 'helm-world-time "helm-misc" "\
Preconfigured `helm' to show world time.
Default action change TZ environment variable locally to emacs.

\(fn)" t nil)

(autoload 'helm-insert-latex-math "helm-misc" "\
Preconfigured helm for latex math symbols completion.

\(fn)" t nil)

(autoload 'helm-ratpoison-commands "helm-misc" "\
Preconfigured `helm' to execute ratpoison commands.

\(fn)" t nil)

(autoload 'helm-stumpwm-commands "helm-misc" "\
Preconfigured helm for stumpwm commands.

\(fn)" t nil)

(autoload 'helm-minibuffer-history "helm-misc" "\
Preconfigured `helm' for `minibuffer-history'.

\(fn)" t nil)

(autoload 'helm-comint-input-ring "helm-misc" "\
Preconfigured `helm' that provide completion of `comint' history.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-misc" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-misc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-misc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-misc" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-mode" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-mode.el"
;;;;;;  "9cdc792dedf4d0aaeeead4097db63644")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-mode.el

(autoload 'helm-comp-read "helm-mode" "\
Read a string in the minibuffer, with helm completion.

It is helm `completing-read' equivalent.

- PROMPT is the prompt name to use.

- COLLECTION can be a list, vector, obarray or hash-table.
  It can be also a function that receives three arguments:
  the values string, predicate and t. See `all-completions' for more details.

Keys description:

- TEST: A predicate called with one arg i.e candidate.

- INITIAL-INPUT: Same as input arg in `helm'.

- PRESELECT: See preselect arg of `helm'.

- DEFAULT: This option is used only for compatibility with regular
  Emacs `completing-read' (Same as DEFAULT arg of `completing-read').

- BUFFER: Name of helm-buffer.

- MUST-MATCH: Candidate selected must be one of COLLECTION.

- FUZZY: Enable fuzzy matching.

- REVERSE-HISTORY: When non--nil display history source after current
  source completion.

- REQUIRES-PATTERN: Same as helm attribute, default is 0.

- HISTORY: A list containing specific history, default is nil.
  When it is non--nil, all elements of HISTORY are displayed in
  a special source before COLLECTION.

- INPUT-HISTORY: A symbol. the minibuffer input history will be
  stored there, if nil or not provided, `minibuffer-history'
  will be used instead.

- CASE-FOLD: Same as `helm-case-fold-search'.

- DEL-INPUT: Boolean, when non--nil (default) remove the partial
  minibuffer input from HISTORY is present.

- PERSISTENT-ACTION: A function called with one arg i.e candidate.

- PERSISTENT-HELP: A string to document PERSISTENT-ACTION.

- MODE-LINE: A string or list to display in mode line.
  Default is `helm-comp-read-mode-line'.

- KEYMAP: A keymap to use in this `helm-comp-read'.
  (the keymap will be shared with history source)

- NAME: The name related to this local source.

- HEADER-NAME: A function to alter NAME, see `helm'.

- EXEC-WHEN-ONLY-ONE: Bound `helm-execute-action-at-once-if-one'
  to non--nil. (possibles values are t or nil).

- VOLATILE: Use volatile attribute.

- SORT: A predicate to give to `sort' e.g `string-lessp'
  Use this only on small data as it is ineficient.
  If you want to sort faster add a sort function to
  FC-TRANSFORMER.
  Note that FUZZY when enabled is already providing a sort function.

- FC-TRANSFORMER: A `filtered-candidate-transformer' function
  or a list of functions.

- HIST-FC-TRANSFORMER: A `filtered-candidate-transformer'
  function for the history source.

- MARKED-CANDIDATES: If non--nil return candidate or marked candidates as a list.

- NOMARK: When non--nil don't allow marking candidates.

- ALISTP: (default is non--nil) See `helm-comp-read-get-candidates'.

- CANDIDATES-IN-BUFFER: when non--nil use a source build with
  `helm-source-in-buffer' which is much faster.
  Argument VOLATILE have no effect when CANDIDATES-IN-BUFFER is non--nil.

- MATCH-PART: Allow matching only one part of candidate.
  See match-part documentation in `helm-source'.

- ALLOW-NEST: Allow nesting this `helm-comp-read' in a helm session.
  See `helm'.

- MULTILINE: See multiline in `helm-source'.

Any prefix args passed during `helm-comp-read' invocation will be recorded
in `helm-current-prefix-arg', otherwise if prefix args were given before
`helm-comp-read' invocation, the value of `current-prefix-arg' will be used.
That's mean you can pass prefix args before or after calling a command
that use `helm-comp-read' See `helm-M-x' for example.

\(fn PROMPT COLLECTION &key TEST INITIAL-INPUT DEFAULT PRESELECT (BUFFER \"*Helm Completions*\") MUST-MATCH FUZZY REVERSE-HISTORY (REQUIRES-PATTERN 0) HISTORY INPUT-HISTORY (CASE-FOLD helm-comp-read-case-fold-search) (DEL-INPUT t) (PERSISTENT-ACTION nil) (PERSISTENT-HELP \"DoNothing\") (MODE-LINE helm-comp-read-mode-line) HELP-MESSAGE (KEYMAP helm-comp-read-map) (NAME \"Helm Completions\") HEADER-NAME CANDIDATES-IN-BUFFER MATCH-PART EXEC-WHEN-ONLY-ONE QUIT-WHEN-NO-CAND (VOLATILE t) SORT FC-TRANSFORMER HIST-FC-TRANSFORMER MARKED-CANDIDATES NOMARK (ALISTP t) (CANDIDATE-NUMBER-LIMIT helm-candidate-number-limit) MULTILINE ALLOW-NEST)" nil nil)

(autoload 'helm-read-file-name "helm-mode" "\
Read a file name with helm completion.
It is helm `read-file-name' emulation.

Argument PROMPT is the default prompt to use.

Keys description:

- NAME: Source name, default to \"Read File Name\".

- INITIAL-INPUT: Where to start read file name, default to `default-directory'.

- BUFFER: `helm-buffer' name default to \"*Helm Completions*\".

- TEST: A predicate called with one arg 'candidate'.

- CASE-FOLD: Same as `helm-case-fold-search'.

- PRESELECT: helm preselection.

- HISTORY: Display HISTORY in a special source.

- MUST-MATCH: Can be 'confirm, nil, or t.

- FUZZY: Enable fuzzy matching when non-nil (Enabled by default).

- MARKED-CANDIDATES: When non--nil return a list of marked candidates.

- NOMARK: When non--nil don't allow marking candidates.

- ALISTP: Don't use `all-completions' in history (take effect only on history).

- PERSISTENT-ACTION-IF: a persistent if action function.

- PERSISTENT-HELP: persistent help message.

- MODE-LINE: A mode line message, default is `helm-read-file-name-mode-line-string'.

\(fn PROMPT &key (NAME \"Read File Name\") (INITIAL-INPUT default-directory) (BUFFER \"*Helm file completions*\") TEST (CASE-FOLD helm-file-name-case-fold-search) PRESELECT HISTORY MUST-MATCH (FUZZY t) DEFAULT MARKED-CANDIDATES (CANDIDATE-NUMBER-LIMIT helm-ff-candidate-number-limit) NOMARK (ALISTP t) (PERSISTENT-ACTION-IF \\='helm-find-files-persistent-action-if) (PERSISTENT-HELP \"Hit1 Expand Candidate, Hit2 or (C-u) Find file\") (MODE-LINE helm-read-file-name-mode-line-string))" nil nil)

(defvar helm-mode nil "\
Non-nil if Helm mode is enabled.
See the `helm-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-mode'.")

(custom-autoload 'helm-mode "helm-mode" nil)

(autoload 'helm-mode "helm-mode" "\
Toggle generic helm completion.

All functions in Emacs that use `completing-read'
or `read-file-name' and friends will use helm interface
when this mode is turned on.

However you can modify this behavior for functions of your choice
with `helm-completing-read-handlers-alist'.

Also commands using `completion-in-region' will be helmized when
`helm-mode-handle-completion-in-region' is non nil, you can modify
this behavior with `helm-mode-no-completion-in-region-in-modes'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can turn it on with `helm-mode'.

Some crap emacs functions may not be supported,
e.g `ffap-alternate-file' and maybe others
You can add such functions to `helm-completing-read-handlers-alist'
with a nil value.

About `ido-mode':
When you are using `helm-mode', DO NOT use `ido-mode', instead if you
want some commands use `ido', add these commands to
`helm-completing-read-handlers-alist' with `ido' as value.

Note: This mode is incompatible with Emacs23.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-mode" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-mode" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-net" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-net.el"
;;;;;;  "d440866420d4b547832d21f4945f5223")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-net.el

(autoload 'helm-browse-url-firefox "helm-net" "\
Same as `browse-url-firefox' but detach from emacs.

So when you quit emacs you can keep your firefox session open
and not be prompted to kill firefox process.

NOTE: Probably not supported on some systems (e.g Windows).

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-opera "helm-net" "\
Browse URL with opera browser and detach from emacs.

So when you quit emacs you can keep your opera session open
and not be prompted to kill opera process.

NOTE: Probably not supported on some systems (e.g Windows).

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-chromium "helm-net" "\
Browse URL with google chrome browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-uzbl "helm-net" "\
Browse URL with uzbl browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-conkeror "helm-net" "\
Browse URL with conkeror browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-surfraw "helm-net" "\
Preconfigured `helm' to search PATTERN with search ENGINE.

\(fn PATTERN ENGINE)" t nil)

(autoload 'helm-google-suggest "helm-net" "\
Preconfigured `helm' for google search with google suggest.

\(fn)" t nil)

(autoload 'helm-wikipedia-suggest "helm-net" "\
Preconfigured `helm' for Wikipedia lookup with Wikipedia suggest.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-net" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-net.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-net.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-net" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-org" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-org.el"
;;;;;;  "188fa11f31e157ae782070aacf2f8698")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-org.el

(autoload 'helm-org-agenda-files-headings "helm-org" "\
Preconfigured helm for org files headings.

\(fn)" t nil)

(autoload 'helm-org-in-buffer-headings "helm-org" "\
Preconfigured helm for org buffer headings.

\(fn)" t nil)

(autoload 'helm-org-parent-headings "helm-org" "\
Preconfigured helm for org headings that are parents of the
current heading.

\(fn)" t nil)

(autoload 'helm-org-capture-templates "helm-org" "\
Preconfigured helm for org templates.

\(fn)" t nil)

(autoload 'helm-org-completing-read-tags "helm-org" "\
Completing read function for Org tags.

This function is used as a `completing-read' function in
`helm-completing-read-handlers-alist' by `org-set-tags' and
`org-capture'.

NOTE: Org tag completion will work only if you disable org fast tag
selection, see (info \"(org) setting tags\").

\(fn PROMPT COLLECTION PRED REQ INITIAL HIST DEF INHERIT-INPUT-METHOD NAME BUFFER)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-org" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-org.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-org.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-org" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-regexp" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-regexp.el"
;;;;;;  "934bdd761702452eeff6a72583ef01a9")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-regexp.el

(autoload 'helm-moccur-mode "helm-regexp" "\
Major mode to provide actions in helm moccur saved buffer.

Special commands:
\\{helm-moccur-mode-map}

\(fn)" t nil)

(autoload 'helm-regexp "helm-regexp" "\
Preconfigured helm to build regexps.
`query-replace-regexp' can be run from there against found regexp.

\(fn)" t nil)

(autoload 'helm-occur "helm-regexp" "\
Preconfigured helm for searching lines matching pattern in `current-buffer'.

When `helm-source-occur' is member of
`helm-sources-using-default-as-input' which is the default,
symbol at point is searched at startup.

When a region is marked search only in this region by narrowing.

To search in multiples buffers start from one of the commands listing
buffers (i.e. a helm command using `helm-source-buffers-list' like
`helm-mini') and use the multi occur buffers action.

This is the helm implementation that collect lines matching pattern
like vanilla emacs `occur' but have nothing to do with it, the search
engine beeing completely different.

\(fn)" t nil)

(autoload 'helm-occur-from-isearch "helm-regexp" "\
Invoke `helm-occur' from isearch.

\(fn)" t nil)

(autoload 'helm-multi-occur-from-isearch "helm-regexp" "\
Invoke `helm-multi-occur' from isearch.

With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling
`helm-multi-occur-from-isearch' or during the buffer selection.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-regexp"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-regexp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-regexp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-regexp" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-ring" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-ring.el"
;;;;;;  "24358ca6c7d20f529a9e43bc09b68708")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-ring.el

(autoload 'helm-mark-ring "helm-ring" "\
Preconfigured `helm' for `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-global-mark-ring "helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring'.

\(fn)" t nil)

(autoload 'helm-all-mark-rings "helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring' and `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-register "helm-ring" "\
Preconfigured `helm' for Emacs registers.

\(fn)" t nil)

(autoload 'helm-show-kill-ring "helm-ring" "\
Preconfigured `helm' for `kill-ring'.
It is drop-in replacement of `yank-pop'.

First call open the kill-ring browser, next calls move to next line.

\(fn)" t nil)

(autoload 'helm-execute-kmacro "helm-ring" "\
Preconfigured helm for keyboard macros.
Define your macros with `f3' and `f4'.
See (info \"(emacs) Keyboard Macros\") for detailed infos.
This command is useful when used with persistent action.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-ring" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-ring.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-ring.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-ring" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-semantic" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-semantic.el"
;;;;;;  "6d5115d95b583fcf84e4dc13343345df")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-semantic.el

(autoload 'helm-semantic "helm-semantic" "\
Preconfigured `helm' for `semantic'.
If ARG is supplied, pre-select symbol at point instead of current

\(fn ARG)" t nil)

(autoload 'helm-semantic-or-imenu "helm-semantic" "\
Preconfigured helm for `semantic' or `imenu'.
If ARG is supplied, pre-select symbol at point instead of current
semantic tag in scope.

If `semantic-mode' is active in the current buffer, then use
semantic for generating tags, otherwise fall back to `imenu'.
Fill in the symbol at point by default.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-semantic"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-semantic.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-semantic.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-semantic" '("helm-s")))

;;;***

;;;***

;;;### (autoloads nil "helm-sys" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-sys.el"
;;;;;;  "bf4919cf4b6a5982562a09c366a32957")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-sys.el

(defvar helm-top-poll-mode nil "\
Non-nil if Helm-Top-Poll mode is enabled.
See the `helm-top-poll-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-top-poll-mode'.")

(custom-autoload 'helm-top-poll-mode "helm-sys" nil)

(autoload 'helm-top-poll-mode "helm-sys" "\
Refresh automatically helm top buffer once enabled.

If called interactively, enable Helm-Top-Poll mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'helm-top "helm-sys" "\
Preconfigured `helm' for top command.

\(fn)" t nil)

(autoload 'helm-list-emacs-process "helm-sys" "\
Preconfigured `helm' for emacs process.

\(fn)" t nil)

(autoload 'helm-xrandr-set "helm-sys" "\
Preconfigured helm for xrandr.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-sys" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-sys.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-sys.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-sys" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-tags" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-tags.el"
;;;;;;  "67bbd6bec22e6df77597cf158975f8fb")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-tags.el

(autoload 'helm-etags-select "helm-tags" "\
Preconfigured helm for etags.
If called with a prefix argument REINIT
or if any of the tag files have been modified, reinitialize cache.

This function aggregates three sources of tag files:

  1) An automatically located file in the parent directories,
     by `helm-etags-get-tag-file'.
  2) `tags-file-name', which is commonly set by `find-tag' command.
  3) `tags-table-list' which is commonly set by `visit-tags-table' command.

\(fn REINIT)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-tags" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-tags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-tags.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-tags" '("helm-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "helm-types" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-types.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-types.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-types" '("helm-")))

;;;***

;;;### (autoloads nil "helm-utils" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-utils.el"
;;;;;;  "fbe6c4197a5a0c8fe0b8c7a8f7318ed7")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-utils.el

(defvar helm-popup-tip-mode nil "\
Non-nil if Helm-Popup-Tip mode is enabled.
See the `helm-popup-tip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-popup-tip-mode'.")

(custom-autoload 'helm-popup-tip-mode "helm-utils" nil)

(autoload 'helm-popup-tip-mode "helm-utils" "\
Show help-echo informations in a popup tip at end of line.

If called interactively, enable Helm-Popup-Tip mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-utils" "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-utils" '("helm-" "with-helm-display-marked-candidates")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "helm-x-files"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-x-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-x-files.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-x-files" '("helm-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-adaptive.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-bookmark.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-buffers.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-color.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-command.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-config.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-dabbrev.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-easymenu.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp-package.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-elisp.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eshell.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-eval.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-external.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-files.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-find.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-font.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-for-files.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-grep.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-help.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-id-utils.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-imenu.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-info.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-locate.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-man.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-misc.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-mode.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-net.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-org.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-regexp.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-ring.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-semantic.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-sys.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-tags.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-types.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-utils.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/helm-20181222.848/helm-x-files.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-autoloads.el ends here
