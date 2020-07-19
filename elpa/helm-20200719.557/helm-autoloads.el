;;; helm-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-adaptive" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-adaptive.el"
;;;;;;  "742cc81ad69ffee2d2052d8b0c17fafe")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-adaptive.el

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

If called interactively, enable Helm-Adaptive mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'helm-reset-adaptive-history "helm-adaptive" "\
Delete all `helm-adaptive-history' and his file.
Useful when you have a old or corrupted
`helm-adaptive-history-file'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-adaptive"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-adaptive.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-adaptive.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-adaptive" '("helm-adapt")))

;;;***

;;;***

;;;### (autoloads nil "helm-bookmark" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-bookmark.el"
;;;;;;  "d9e204cd335112edb60f89d01a4e5718")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-bookmark.el

(autoload 'helm-bookmarks "helm-bookmark" "\
Preconfigured `helm' for bookmarks." t nil)

(autoload 'helm-filtered-bookmarks "helm-bookmark" "\
Preconfigured `helm' for bookmarks (filtered by category).
Optional source `helm-source-bookmark-addressbook' is loaded only
if external addressbook-bookmark package is installed." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-bookmark"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-bookmark.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-bookmark.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-bookmark" '("bmkext-jump-" "bookmark" "helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-buffers" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-buffers.el"
;;;;;;  "c174febb49aee039190bd9002706e1d6")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-buffers.el

(autoload 'helm-buffers-list "helm-buffers" "\
Preconfigured `helm' to list buffers." t nil)

(autoload 'helm-mini "helm-buffers" "\
Preconfigured `helm' displaying `helm-mini-default-sources'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-buffers"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-buffers.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-buffers.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-buffers" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-color" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-color.el"
;;;;;;  "86d9ccc30a85c334b4f43c095f154328")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-color.el

(autoload 'helm-colors "helm-color" "\
Preconfigured `helm' for color." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-color" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-color.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-color.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-color" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-comint" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-comint.el"
;;;;;;  "56a8fdf3d3b18183a0af06238e4758f4")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-comint.el

(autoload 'helm-comint-prompts "helm-comint" "\
Pre-configured `helm' to browse the prompts of the current comint buffer." t nil)

(autoload 'helm-comint-prompts-all "helm-comint" "\
Pre-configured `helm' to browse the prompts of all comint sessions." t nil)

(autoload 'helm-comint-input-ring "helm-comint" "\
Preconfigured `helm' that provide completion of `comint' history." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-comint"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-comint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-comint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-comint" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-command" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-command.el"
;;;;;;  "00a4a035e046d9ed3a8bf958d315d169")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-command.el

(autoload 'helm-M-x "helm-command" "\
Preconfigured `helm' for Emacs commands.
It is `helm' replacement of regular `M-x'
`execute-extended-command'.

Unlike regular `M-x' Emacs vanilla `execute-extended-command'
command, the prefix args if needed, can be passed AFTER starting
`helm-M-x'.  When a prefix arg is passed BEFORE starting
`helm-M-x', the first `C-u' while in `helm-M-x' session will
disable it.

You can get help on each command by persistent action.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-command"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-command.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-command.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-command" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-config" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-config.el"
;;;;;;  "004fe707acf664b9abaf9c031fc873a9")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-config.el

(autoload 'helm-configuration "helm-config" "\
Customize Helm." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-config"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-config.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-config.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-config" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-dabbrev" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-dabbrev.el"
;;;;;;  "f4a4bcb1867514fafe43f79fff56c0ae")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-dabbrev.el

(autoload 'helm-dabbrev "helm-dabbrev" "\
Preconfigured helm for dynamic abbreviations." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-dabbrev"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-dabbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-dabbrev.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-dabbrev" '("helm-dabbrev-")))

;;;***

;;;***

;;;### (autoloads nil "helm-elisp" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp.el"
;;;;;;  "63cb2c93786d69697895c58d9badaba8")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp.el

(autoload 'helm-lisp-completion-at-point "helm-elisp" "\
Preconfigured Helm for Lisp symbol completion at point." t nil)

(autoload 'helm-complete-file-name-at-point "helm-elisp" "\
Preconfigured Helm to complete file name at point.

\(fn &optional FORCE)" t nil)

(autoload 'helm-lisp-indent "helm-elisp" nil t nil)

(autoload 'helm-lisp-completion-or-file-name-at-point "helm-elisp" "\
Preconfigured Helm to complete Lisp symbol or filename at point.
Filename completion happens if string start after or between a
double quote." t nil)

(autoload 'helm-apropos "helm-elisp" "\
Preconfigured Helm to describe commands, functions, variables and faces.
In non interactives calls DEFAULT argument should be provided as
a string, i.e. the `symbol-name' of any existing symbol.

\(fn DEFAULT)" t nil)

(autoload 'helm-manage-advice "helm-elisp" "\
Preconfigured `helm' to disable/enable function advices." t nil)

(autoload 'helm-locate-library "helm-elisp" "\
Preconfigured helm to locate elisp libraries." t nil)

(autoload 'helm-timers "helm-elisp" "\
Preconfigured `helm' for timers." t nil)

(autoload 'helm-complex-command-history "helm-elisp" "\
Preconfigured `helm' for complex command history." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-elisp" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-elisp" '("helm-" "with-helm-show-completion")))

;;;***

;;;***

;;;### (autoloads nil "helm-elisp-package" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp-package.el"
;;;;;;  "08c3045079d921d2f25f5f876a0678aa")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp-package.el

(autoload 'helm-list-elisp-packages "helm-elisp-package" "\
Preconfigured `helm' for listing and handling Emacs packages.

\(fn ARG)" t nil)

(autoload 'helm-list-elisp-packages-no-fetch "helm-elisp-package" "\
Preconfigured Helm for Emacs packages.

Same as `helm-list-elisp-packages' but don't fetch packages on
remote.  Called with a prefix ARG always fetch packages on
remote.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-elisp-package"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp-package.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp-package.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-elisp-package" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-eshell" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eshell.el"
;;;;;;  "a24979b67f14d898ebb17bb75b4b97b6")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eshell.el

(autoload 'helm-esh-pcomplete "helm-eshell" "\
Preconfigured `helm' to provide Helm completion in Eshell." t nil)

(autoload 'helm-eshell-history "helm-eshell" "\
Preconfigured Helm for Eshell history." t nil)

(autoload 'helm-eshell-prompts "helm-eshell" "\
Pre-configured `helm' to browse the prompts of the current Eshell." t nil)

(autoload 'helm-eshell-prompts-all "helm-eshell" "\
Pre-configured `helm' to browse the prompts of all Eshell sessions." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-eshell"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eshell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eshell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-eshell" '("helm-e")))

;;;***

;;;***

;;;### (autoloads nil "helm-eval" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eval.el"
;;;;;;  "61ade3ec2e4d888e583f1234eadbfdce")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eval.el

(autoload 'helm-eval-expression "helm-eval" "\
Preconfigured `helm' for `helm-source-evaluation-result'.

\(fn ARG)" t nil)

(autoload 'helm-eval-expression-with-eldoc "helm-eval" "\
Preconfigured `helm' for `helm-source-evaluation-result' with `eldoc' support." t nil)

(autoload 'helm-calcul-expression "helm-eval" "\
Preconfigured `helm' for `helm-source-calculation-result'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-eval" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eval.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eval.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-eval" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-external" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-external.el"
;;;;;;  "d949459803922101af7d66987073fde8")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-external.el

(autoload 'helm-run-external-command "helm-external" "\
Preconfigured `helm' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`helm-external-commands-list'.

\(fn PROGRAM)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-external"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-external.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-external.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-external" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-files" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-files.el"
;;;;;;  "1a9f3eaa133eb856b02bfb87a8ccbf04")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-files.el

(defvar helm-ff-cache-mode nil "\
Non-nil if Helm-Ff-Cache mode is enabled.
See the `helm-ff-cache-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-ff-cache-mode'.")

(custom-autoload 'helm-ff-cache-mode "helm-files" nil)

(autoload 'helm-ff-cache-mode "helm-files" "\
Auto refresh `helm-find-files' cache when emacs is idle.

If called interactively, enable Helm-Ff-Cache mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

You will probably don't want to start this mode directly but instead
customize `helm-ff-keep-cached-candidates' to a non nil value to
enable it.
With `helm-ff-keep-cached-candidates' set to a nil value the mode will
disable itself.

When Emacs is idle, refresh the cache all the
`helm-ff-refresh-cache-delay' seconds then stop when done or after
`helm-ff-cache-mode-max-idle-time' if emacs is still idle.

\(fn &optional ARG)" t nil)

(autoload 'helm-projects-history "helm-files" "\


\(fn ARG)" t nil)

(autoload 'helm-browse-project "helm-files" "\
Preconfigured helm to browse projects.
Browse files and see status of project with its VCS.
Only HG and GIT are supported for now.
Fall back to `helm-browse-project-find-files' if current
directory is not under control of one of those VCS.
With a prefix ARG browse files recursively, with two prefix ARG
rebuild the cache.
If the current directory is found in the cache, start
`helm-browse-project-find-files' even with no prefix ARG.
NOTE: The prefix ARG have no effect on the VCS controlled
directories.

Needed dependencies for VCS:
<https://github.com/emacs-helm/helm-ls-git>
and
<https://github.com/emacs-helm/helm-ls-hg>.

\(fn ARG)" t nil)

(autoload 'helm-find-files "helm-files" "\
Preconfigured `helm' for helm implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `helm-find-files-1' instead.
This is the starting point for nearly all actions you can do on
files.

\(fn ARG)" t nil)

(autoload 'helm-delete-tramp-connection "helm-files" "\
Allow deleting tramp connection or marked tramp connections at once.

This replace `tramp-cleanup-connection' which is partially broken
in Emacs < to 25.1.50.1 (See Emacs Bug#24432).

It allows additionally to delete more than one connection at
once." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-files" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-files.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-files" '("eshell-command-aliases-list" "helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-find" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-find.el"
;;;;;;  "f9b87c0245b3ea9ad73a082b9967e1b6")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-find.el

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

;;;### (autoloads "actual autoloads are elsewhere" "helm-find" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-find.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-find.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-find" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-font" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-font.el"
;;;;;;  "0a5946e993e6f2452c9f739ce7e0bab3")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-font.el

(autoload 'helm-select-xfont "helm-font" "\
Preconfigured `helm' to select Xfont." t nil)

(autoload 'helm-ucs "helm-font" "\
Preconfigured `helm' for `ucs-names'.

Called with a prefix arg force reloading cache.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-font" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-font.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-font.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-font" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-for-files" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-for-files.el"
;;;;;;  "4c9451cea9fc55d2585b2b14defb264f")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-for-files.el

(autoload 'helm-for-files "helm-for-files" "\
Preconfigured `helm' for opening files.
Run all sources defined in `helm-for-files-preferred-list'." t nil)

(autoload 'helm-multi-files "helm-for-files" "\
Preconfigured helm like `helm-for-files' but running locate only on demand.

Allow toggling back and forth from locate to others sources with
`helm-multi-files-toggle-locate-binding' key.
This avoids launching locate needlessly when what you are
searching for is already found." t nil)

(autoload 'helm-recentf "helm-for-files" "\
Preconfigured `helm' for `recentf'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-for-files"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-for-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-for-files.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-for-files" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-grep" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-grep.el"
;;;;;;  "e9d09e6b55086692b3cc0f6b52de20c4")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-grep.el

(autoload 'helm-goto-precedent-file "helm-grep" "\
Go to previous file in Helm grep/etags buffers." t nil)

(autoload 'helm-goto-next-file "helm-grep" "\
Go to previous file in Helm grep/etags buffers." t nil)

(autoload 'helm-do-grep-ag "helm-grep" "\
Preconfigured `helm' for grepping with AG in `default-directory'.
With prefix arg prompt for type if available with your AG
version.

\(fn ARG)" t nil)

(autoload 'helm-grep-do-git-grep "helm-grep" "\
Preconfigured `helm' for git-grepping `default-directory'.
With a prefix arg ARG git-grep the whole repository.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-grep" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-grep.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-grep.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-grep" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-help" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-help.el"
;;;;;;  "d7460eb4d36023b3d2e49cb021579af9")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-help.el

(autoload 'helm-documentation "helm-help" "\
Preconfigured `helm' for Helm documentation.
With a prefix arg refresh the documentation.

Find here the documentation of all documented sources." t nil)

(defvar helm-comp-read-mode-line "\\<helm-comp-read-map>C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend \\[helm-customize-group]:Conf")

(defvar helm-read-file-name-mode-line-string "\\<helm-read-file-map>\\[helm-help]:Help C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend \\[helm-customize-group]:Conf" "\
String displayed in mode-line in `helm-source-find-files'.")

(defvar helm-top-mode-line "\\<helm-top-map>\\[helm-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend \\[helm-customize-group]:Conf")

;;;### (autoloads "actual autoloads are elsewhere" "helm-help" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-help.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-help.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-help" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-id-utils" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-id-utils.el"
;;;;;;  "cd089df13d581275fecd16283fe95f3b")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-id-utils.el

(autoload 'helm-gid "helm-id-utils" "\
Preconfigured `helm' for `gid' command line of `ID-Utils'.
Need A database created with the command `mkid' above
`default-directory'.
Need id-utils as dependency which provide `mkid', `gid' etc..
See <https://www.gnu.org/software/idutils/>." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-id-utils"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-id-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-id-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-id-utils" '("helm-gid-")))

;;;***

;;;***

;;;### (autoloads nil "helm-imenu" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-imenu.el"
;;;;;;  "7a80264e3b94ec77274d083d9d084218")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-imenu.el

(autoload 'helm-imenu "helm-imenu" "\
Preconfigured `helm' for `imenu'." t nil)

(autoload 'helm-imenu-in-all-buffers "helm-imenu" "\
Preconfigured `helm' for fetching imenu entries in all buffers with similar mode as current.
A mode is similar as current if it is the same, it is derived
i.e. `derived-mode-p' or it have an association in
`helm-imenu-all-buffer-assoc'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-imenu" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-imenu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-imenu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-imenu" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-info" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-info.el"
;;;;;;  "efa0a64e30b7b668add7b3b78751d49d")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-info.el

(autoload 'helm-info "helm-info" "\
Preconfigured `helm' for searching Info files' indices.

With a prefix argument \\[universal-argument], set REFRESH to
non-nil.

Optional parameter REFRESH, when non-nil, re-evaluates
`helm-default-info-index-list'.  If the variable has been
customized, set it to its saved value.  If not, set it to its
standard value. See `custom-reevaluate-setting' for more.

REFRESH is useful when new Info files are installed.  If
`helm-default-info-index-list' has not been customized, the new
Info files are made available.

\(fn &optional REFRESH)" t nil)

(autoload 'helm-info-at-point "helm-info" "\
Preconfigured `helm' for searching info at point." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-info" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-info.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-info.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-info" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-locate" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-locate.el"
;;;;;;  "74fc27331eb4054e13724afbd57cfaec")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-locate.el

(autoload 'helm-projects-find-files "helm-locate" "\
Find files with locate in `helm-locate-project-list'.
With a prefix arg refresh the database in each project.

\(fn UPDATE)" t nil)

(autoload 'helm-locate "helm-locate" "\
Preconfigured `helm' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options and also `helm-locate-command'.

You can specify a local database with prefix argument ARG.
With two prefix arg, refresh the current local db or create it if
it doesn't exists.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`helm-locate-db-file-regexp'.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-locate"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-locate.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-locate.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-locate" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-man" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-man.el"
;;;;;;  "8532b5376c9e6aa7771db2582f343a70")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-man.el

(autoload 'helm-man-woman "helm-man" "\
Preconfigured `helm' for Man and Woman pages.
With a prefix arg reinitialize the cache.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-man" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-man.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-man.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-man" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-misc" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-misc.el"
;;;;;;  "463732c71e7618de42b6b083f1060375")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-misc.el

(autoload 'helm-world-time "helm-misc" "\
Preconfigured `helm' to show world time.
Default action change TZ environment variable locally to emacs." t nil)

(autoload 'helm-insert-latex-math "helm-misc" "\
Preconfigured helm for latex math symbols completion." t nil)

(autoload 'helm-ratpoison-commands "helm-misc" "\
Preconfigured `helm' to execute ratpoison commands." t nil)

(autoload 'helm-stumpwm-commands "helm-misc" "\
Preconfigured helm for stumpwm commands." t nil)

(autoload 'helm-minibuffer-history "helm-misc" "\
Preconfigured `helm' for `minibuffer-history'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-misc" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-misc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-misc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-misc" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-mode" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-mode.el"
;;;;;;  "21b3b19abec9c957fce1b35376f92f69")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-mode.el

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

- INPUT-HISTORY: A symbol. The minibuffer input history will be
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
  Use this only on small data as it is inefficient.
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

- MATCH-DYNAMIC: See match-dynamic in `helm-source-sync'
  It has no effect when used with CANDIDATES-IN-BUFFER.

- ALLOW-NEST: Allow nesting this `helm-comp-read' in a helm session.
  See `helm'.

- MULTILINE: See multiline in `helm-source'.

- COERCE: See coerce in `helm-source'.

- GROUP: See group in `helm-source'.

Any prefix args passed during `helm-comp-read' invocation will be recorded
in `helm-current-prefix-arg', otherwise if prefix args were given before
`helm-comp-read' invocation, the value of `current-prefix-arg' will be used.
That means you can pass prefix args before or after calling a command
that use `helm-comp-read'.  See `helm-M-x' for example.

\(fn PROMPT COLLECTION &key TEST INITIAL-INPUT DEFAULT PRESELECT (BUFFER \"*Helm Completions*\") MUST-MATCH FUZZY REVERSE-HISTORY (REQUIRES-PATTERN 0) HISTORY INPUT-HISTORY (CASE-FOLD helm-comp-read-case-fold-search) (DEL-INPUT t) (PERSISTENT-ACTION nil) (PERSISTENT-HELP \"DoNothing\") (MODE-LINE helm-comp-read-mode-line) HELP-MESSAGE (KEYMAP helm-comp-read-map) (NAME \"Helm Completions\") HEADER-NAME CANDIDATES-IN-BUFFER MATCH-PART MATCH-DYNAMIC EXEC-WHEN-ONLY-ONE QUIT-WHEN-NO-CAND (VOLATILE t) SORT FC-TRANSFORMER HIST-FC-TRANSFORMER MARKED-CANDIDATES NOMARK (ALISTP t) (CANDIDATE-NUMBER-LIMIT helm-candidate-number-limit) MULTILINE ALLOW-NEST COERCE (GROUP \\='helm))" nil nil)

(autoload 'helm-read-file-name "helm-mode" "\
Read a file name with helm completion.
It is helm `read-file-name' emulation.

Argument PROMPT is the default prompt to use.

Keys description:

- NAME: Source name, default to \"Read File Name\".

- INITIAL-INPUT: Where to start reading file name, default to `default-directory'.

- BUFFER: `helm-buffer' name, defaults to \"*Helm Completions*\".

- TEST: A predicate called with one arg 'candidate'.

- NORET: Allow disabling helm-ff-RET (have no effect if helm-ff-RET
                                      isn't bound to RET).

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

\(fn PROMPT &key (NAME \"Read File Name\") (INITIAL-INPUT default-directory) (BUFFER \"*Helm file completions*\") TEST NORET (CASE-FOLD helm-file-name-case-fold-search) PRESELECT HISTORY MUST-MATCH (FUZZY t) DEFAULT MARKED-CANDIDATES (CANDIDATE-NUMBER-LIMIT helm-ff-candidate-number-limit) NOMARK (ALISTP t) (PERSISTENT-ACTION-IF \\='helm-find-files-persistent-action-if) (PERSISTENT-HELP \"Hit1 Expand Candidate, Hit2 or (C-u) Find file\") (MODE-LINE helm-read-file-name-mode-line-string))" nil nil)

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

All functions in Emacs that use `completing-read',
`read-file-name', `completion-in-region' and friends will use helm
interface when this mode is turned on.

However you can modify this behavior for functions of your choice
with `helm-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can toggle it with M-x `helm-mode'.

About `ido-mode':
DO NOT enable `ido-everywhere' when using `helm-mode'.  Instead of
using `ido-mode', add the commands where you want to use ido to
`helm-completing-read-handlers-alist' with `ido' as value.

Note: This mode is incompatible with Emacs23.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-mode" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-mode" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-net" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-net.el"
;;;;;;  "67262caa5722c7e13a8c46a6d50b14c0")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-net.el

(autoload 'helm-browse-url-firefox "helm-net" "\
Same as `browse-url-firefox' but detach from Emacs.

So when you quit Emacs you can keep your Firefox session open and
not be prompted to kill the Firefox process.

NOTE: Probably not supported on some systems (e.g., Windows).

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-opera "helm-net" "\
Browse URL with Opera browser and detach from Emacs.

So when you quit Emacs you can keep your Opera session open and
not be prompted to kill the Opera process.

NOTE: Probably not supported on some systems (e.g., Windows).

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-chromium "helm-net" "\
Browse URL with Google Chrome browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-uzbl "helm-net" "\
Browse URL with uzbl browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-conkeror "helm-net" "\
Browse URL with conkeror browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-browse-url-next "helm-net" "\
Browse URL with next browser.

\(fn URL &optional IGNORE)" t nil)

(autoload 'helm-surfraw "helm-net" "\
Preconfigured `helm' to search PATTERN with search ENGINE.

\(fn PATTERN ENGINE)" t nil)

(autoload 'helm-google-suggest "helm-net" "\
Preconfigured `helm' for Google search with Google suggest." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-net" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-net.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-net.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-net" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-occur" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-occur.el"
;;;;;;  "2aff3be3a7ce4ef334f1c79a145860a1")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-occur.el

(autoload 'helm-occur "helm-occur" "\
Preconfigured helm for searching lines matching pattern in `current-buffer'.

When `helm-source-occur' is member of
`helm-sources-using-default-as-input' which is the default,
symbol at point is searched at startup.

When a region is marked search only in this region by narrowing.

To search in multiples buffers start from one of the commands listing
buffers (i.e. a helm command using `helm-source-buffers-list' like
`helm-mini') and use the multi occur buffers action.

This is the helm implementation that collect lines matching pattern
like vanilla Emacs `occur' but have nothing to do with it, the search
engine beeing completely different and also much faster." t nil)

(autoload 'helm-occur-visible-buffers "helm-occur" "\
Run helm-occur on all visible buffers in frame." t nil)

(autoload 'helm-occur-from-isearch "helm-occur" "\
Invoke `helm-occur' from isearch.

To use this bind it to a key in `isearch-mode-map'." t nil)

(autoload 'helm-multi-occur-from-isearch "helm-occur" "\
Invoke `helm-multi-occur' from isearch.

With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling
`helm-multi-occur-from-isearch' or during the buffer selection.

To use this bind it to a key in `isearch-mode-map'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-occur" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-occur.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-occur.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-occur" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-regexp" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-regexp.el"
;;;;;;  "8f58d8fecb7d68e6747c1a398647e50a")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-regexp.el

(autoload 'helm-regexp "helm-regexp" "\
Preconfigured helm to build regexps.
`query-replace-regexp' can be run from there against found regexp." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-regexp"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-regexp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-regexp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-regexp" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-ring" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-ring.el"
;;;;;;  "018e3d2482127c010e3cab4cbf157237")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-ring.el

(autoload 'helm-mark-ring "helm-ring" "\
Preconfigured `helm' for `helm-source-mark-ring'." t nil)

(autoload 'helm-global-mark-ring "helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring'." t nil)

(autoload 'helm-all-mark-rings "helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring' and `helm-source-mark-ring'." t nil)

(autoload 'helm-register "helm-ring" "\
Preconfigured `helm' for Emacs registers." t nil)

(autoload 'helm-show-kill-ring "helm-ring" "\
Preconfigured `helm' for `kill-ring'.
It is drop-in replacement of `yank-pop'.

First call open the kill-ring browser, next calls move to next line." t nil)

(autoload 'helm-execute-kmacro "helm-ring" "\
Preconfigured helm for keyboard macros.
Define your macros with `f3' and `f4'.
See (info \"(emacs) Keyboard Macros\") for detailed infos.
This command is useful when used with persistent action." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-ring" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-ring.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-ring.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-ring" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-semantic" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-semantic.el"
;;;;;;  "bdbb77016cf506c704d5940f449bfc95")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-semantic.el

(autoload 'helm-semantic "helm-semantic" "\
Preconfigured `helm' for `semantic'.
If ARG is supplied, pre-select symbol at point instead of current.

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
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-semantic.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-semantic.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-semantic" '("helm-s")))

;;;***

;;;***

;;;### (autoloads nil "helm-shell" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-shell.el"
;;;;;;  "3fc423062ed0661eb12a5d29886a6179")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-shell.el

(defalias 'helm-shell-prompts 'helm-comint-prompts)

(defalias 'helm-shell-prompts-all 'helm-comint-prompts-all)

;;;***

;;;### (autoloads nil "helm-sys" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-sys.el"
;;;;;;  "2c3de01f0316a518eab24ab926022f81")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-sys.el

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

If called interactively, enable Helm-Top-Poll mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'helm-top "helm-sys" "\
Preconfigured `helm' for top command." t nil)

(autoload 'helm-list-emacs-process "helm-sys" "\
Preconfigured `helm' for Emacs process." t nil)

(autoload 'helm-xrandr-set "helm-sys" "\
Preconfigured helm for xrandr." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-sys" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-sys.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-sys.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-sys" '("helm-")))

;;;***

;;;***

;;;### (autoloads nil "helm-tags" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-tags.el"
;;;;;;  "3886b0d84d8865e8a3ee312bfd833137")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-tags.el

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

;;;### (autoloads "actual autoloads are elsewhere" "helm-tags" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-tags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-tags.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-tags" '("helm-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "helm-types" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-types.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-types.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-types" '("helm-")))

;;;***

;;;### (autoloads nil "helm-utils" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-utils.el"
;;;;;;  "96eaa61dde40b4e7803c6cd337984269")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-utils.el

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

If called interactively, enable Helm-Popup-Tip mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "helm-utils" "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-utils" '("helm-" "with-helm-display-marked-candidates")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "helm-x-files"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-x-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-x-files.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-x-files" '("helm-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-adaptive.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-bookmark.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-buffers.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-color.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-comint.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-command.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-config.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-dabbrev.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-easymenu.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp-package.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-elisp.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eshell.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-eval.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-external.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-files.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-find.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-font.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-for-files.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-grep.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-help.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-id-utils.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-imenu.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-info.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-locate.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-man.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-misc.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-mode.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-net.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-occur.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-pkg.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-regexp.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-ring.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-semantic.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-shell.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-sys.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-tags.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-types.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-utils.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/helm-20200719.557/helm-x-files.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-autoloads.el ends here