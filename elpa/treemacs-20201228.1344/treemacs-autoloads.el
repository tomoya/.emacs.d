;;; treemacs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "treemacs" "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs.el"
;;;;;;  "f94883de8c86130530ec984ebead16fa")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs.el

(autoload 'treemacs-version "treemacs" "\
Return the `treemacs-version'." t nil)

(autoload 'treemacs "treemacs" "\
Initialise or toggle treemacs.
* If the treemacs window is visible hide it.
* If a treemacs buffer exists, but is not visible show it.
* If no treemacs buffer exists for the current frame create and show it.
* If the workspace is empty additionally ask for the root path of the first
  project to add." t nil)

(autoload 'treemacs-find-file "treemacs" "\
Find and focus the current file in the treemacs window.
If the current buffer has visits no file or with a prefix ARG ask for the
file instead.
Will show/create a treemacs buffers if it is not visible/does not exist.
For the most part only useful when `treemacs-follow-mode' is not active.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-find-tag "treemacs" "\
Find and move point to the tag at point in the treemacs view.
Most likely to be useful when `treemacs-tag-follow-mode' is not active.

Will ask to change the treemacs root if the file to find is not under the
root.  If no treemacs buffer exists it will be created with the current file's
containing directory as root.  Will do nothing if the current buffer is not
visiting a file or Emacs cannot find any tags for the current file." t nil)

(autoload 'treemacs-select-window "treemacs" "\
Select the treemacs window if it is visible.
Bring it to the foreground if it is not visible.
Initialise a new treemacs buffer as calling `treemacs' would if there is no
treemacs buffer for this frame." t nil)

(autoload 'treemacs-show-changelog "treemacs" "\
Show the changelog of treemacs." t nil)

(autoload 'treemacs-edit-workspaces "treemacs" "\
Edit your treemacs workspaces and projects as an `org-mode' file." t nil)

(autoload 'treemacs-display-current-project-exclusively "treemacs" "\
Display the current project, and *only* the current project.
Like `treemacs-add-and-display-current-project' this will add the current
project to treemacs based on either projectile or the built-in project.el.
However the 'exclusive' part means that it will make the current project the
only project, all other projects *will be removed* from the current workspace." t nil)

(autoload 'treemacs-add-and-display-current-project "treemacs" "\
Open treemacs and add the current project root to the workspace.
The project is determined first by projectile (if treemacs-projectile is
installed), then by project.el.
If the project is already registered with treemacs just move point to its root.
An error message is displayed if the current buffer is not part of any project." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs" "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs" '("treemacs-version")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-async"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-async.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-async.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-async" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs-bookmarks" "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-bookmarks.el"
;;;;;;  "0b91987ec0767929c44d3d69e80c4e9f")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-bookmarks.el

(autoload 'treemacs-bookmark "treemacs-bookmarks" "\
Find a bookmark in treemacs.
Only bookmarks marking either a file or a directory are offered for selection.
Treemacs will try to find and focus the given bookmark's location, in a similar
fashion to `treemacs-find-file'.

With a prefix argument ARG treemacs will also open the bookmarked location.

\(fn &optional ARG)" t nil)

(autoload 'treemacs--bookmark-handler "treemacs-bookmarks" "\
Open Treemacs into a bookmark RECORD.

\(fn RECORD)" nil nil)

(autoload 'treemacs-add-bookmark "treemacs-bookmarks" "\
Add the current node to Emacs' list of bookmarks.
For file and directory nodes their absolute path is saved.  Tag nodes
additionally also save the tag's position.  A tag can only be bookmarked if the
treemacs node is pointing to a valid buffer position." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-bookmarks"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-bookmarks.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-bookmarks.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-bookmarks" '("treemacs--")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-compatibility"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-compatibility.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-compatibility.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-compatibility" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-core-utils"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-core-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-core-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-core-utils" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-customization"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-customization.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-customization.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-customization" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-diagnostics"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-diagnostics.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-diagnostics.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-diagnostics" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-dom"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-dom.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-dom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-dom" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-extensions"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-extensions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-extensions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-extensions" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-filewatch-mode"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-filewatch-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-filewatch-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-filewatch-mode" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-follow-mode"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-follow-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-follow-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-follow-mode" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-fringe-indicator"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-fringe-indicator.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-fringe-indicator.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-fringe-indicator" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-header-line"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-header-line.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-header-line.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-header-line" '("treemacs-header-buttons-format")))

;;;***

;;;### (autoloads nil "treemacs-hydras" "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-hydras.el"
;;;;;;  "0845164c582825f9cdfd0e873af055aa")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-hydras.el

(autoload 'treemacs-common-helpful-hydra "treemacs-hydras" "\
Summon a helpful hydra to show you the treemacs keymap.

This hydra will show the most commonly used keybinds for treemacs.  For the more
advanced (probably rarely used keybinds) see `treemacs-advanced-helpful-hydra'.

The keybinds shown in this hydra are not static, but reflect the actual
keybindings currently in use (including evil mode).  If the hydra is unable to
find the key a command is bound to it will show a blank instead." t nil)

(autoload 'treemacs-advanced-helpful-hydra "treemacs-hydras" "\
Summon a helpful hydra to show you the treemacs keymap.

This hydra will show the more advanced (rarely used) keybinds for treemacs.  For
the more commonly used keybinds see `treemacs-common-helpful-hydra'.

The keybinds shown in this hydra are not static, but reflect the actual
keybindings currently in use (including evil mode).  If the hydra is unable to
find the key a command is bound to it will show a blank instead." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-hydras"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-hydras.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-hydras.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-hydras" '("treemacs-helpful-hydra")))

;;;***

;;;***

;;;### (autoloads nil "treemacs-icons" "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-icons.el"
;;;;;;  "b9e37454cd9c37847302579fdfbfb961")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-icons.el

(autoload 'treemacs-resize-icons "treemacs-icons" "\
Resize the current theme's icons to the given SIZE.

If SIZE is 'nil' the icons are not resized and will retain their default size of
22 pixels.

There is only one size, the icons are square and the aspect ratio will be
preserved when resizing them therefore width and height are the same.

Resizing the icons only works if Emacs was built with ImageMagick support, or if
using Emacs >= 27.1,which has native image resizing support.  If this is not the
case this function will not have any effect.

Custom icons are not taken into account, only the size of treemacs' own icons
png are changed.

\(fn SIZE)" t nil)

(autoload 'treemacs-define-custom-icon "treemacs-icons" "\
Define a custom ICON for the current theme to use for FILE-EXTENSIONS.

Note that treemacs has a very loose definition of what constitutes a file
extension - it's either everything past the last period, or just the file's full
name if there is no period.  This makes it possible to match file names like
'.gitignore' and 'Makefile'.

Additionally FILE-EXTENSIONS are also not case sensitive and will be stored in a
down-cased state.

\(fn ICON &rest FILE-EXTENSIONS)" nil nil)

(autoload 'treemacs-map-icons-with-auto-mode-alist "treemacs-icons" "\
Remaps icons for EXTENSIONS according to `auto-mode-alist'.
EXTENSIONS should be a list of file extensions such that they match the regex
stored in `auto-mode-alist', for example '(\".cc\").
MODE-ICON-ALIST is an alist that maps which mode from `auto-mode-alist' should
be assigned which treemacs icon, for example
'((c-mode . treemacs-icon-c)
  (c++-mode . treemacs-icon-cpp))

\(fn EXTENSIONS MODE-ICON-ALIST)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-icons"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-icons.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-icons.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-icons" '("treemacs-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-interface"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-interface.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-interface.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-interface" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-logging"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-logging.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-logging.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-logging" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-macros"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-macros.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-macros.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-macros" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs-mode" "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mode.el"
;;;;;;  "09084a58011acb05c0d0395a7cd0b5c5")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mode.el

(autoload 'treemacs-mode "treemacs-mode" "\
A major mode for displaying the file system in a tree layout.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-mode"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-mode" '("treemacs--")))

;;;***

;;;***

;;;### (autoloads nil "treemacs-mouse-interface" "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mouse-interface.el"
;;;;;;  "53002ec0ed04f9a94c0ffe620ce694c4")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mouse-interface.el

(autoload 'treemacs-node-buffer-and-position "treemacs-mouse-interface" "\
Return source buffer or list of buffer and position for the current node.
This information can be used for future display.  Stay in the selected window
and ignore any prefix argument.

\(fn &optional _)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-mouse-interface"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mouse-interface.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mouse-interface.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-mouse-interface" '("treemacs-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-persistence"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-persistence.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-persistence.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-persistence" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-rendering"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-rendering.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-rendering.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-rendering" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-scope"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-scope.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-scope.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-scope" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-tag-follow-mode"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-tag-follow-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-tag-follow-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-tag-follow-mode" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-tags"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-tags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-tags.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-tags" '("treemacs--")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-themes"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-themes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-themes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-themes" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-visuals"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-visuals.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-visuals.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-visuals" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-workspaces"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-workspaces.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-workspaces.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-workspaces" '("treemacs-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-async.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-bookmarks.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-compatibility.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-core-utils.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-customization.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-diagnostics.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-dom.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-extensions.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-faces.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-filewatch-mode.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-follow-mode.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-fringe-indicator.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-header-line.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-hydras.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-icons.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-interface.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-logging.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-macros.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mode.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-mouse-interface.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-persistence.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-pkg.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-rendering.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-scope.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-tag-follow-mode.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-tags.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-themes.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-visuals.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs-workspaces.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/treemacs-20201228.1344/treemacs.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; treemacs-autoloads.el ends here
