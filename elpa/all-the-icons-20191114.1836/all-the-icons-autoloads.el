;;; all-the-icons-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "all-the-icons" "../../../../../../../.emacs.d/elpa/all-the-icons-20191114.1836/all-the-icons.el"
;;;;;;  "2dc235114e175857bd1bd2164d484f13")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/all-the-icons-20191114.1836/all-the-icons.el

(autoload 'all-the-icons-icon-for-file "all-the-icons" "\
Get the formatted icon for FILE.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

\(fn FILE &rest ARG-OVERRIDES)" nil nil)

(autoload 'all-the-icons-icon-for-mode "all-the-icons" "\
Get the formatted icon for MODE.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

\(fn MODE &rest ARG-OVERRIDES)" nil nil)

(autoload 'all-the-icons-icon-for-url "all-the-icons" "\
Get the formatted icon for URL.
If an icon for URL isn't found in `all-the-icons-url-alist', a globe is used.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

\(fn URL &rest ARG-OVERRIDES)" nil nil)

(autoload 'all-the-icons--icon-info-for-buffer "all-the-icons" "\
Get icon info for the current buffer.

When F is provided, the info function is calculated with the format
`all-the-icons-icon-%s-for-file' or `all-the-icons-icon-%s-for-mode'.

\(fn &optional F)" nil nil)

(autoload 'all-the-icons-install-fonts "all-the-icons" "\
Helper function to download and install the latests fonts based on OS.
When PFX is non-nil, ignore the prompt and just install

\(fn &optional PFX)" t nil)

(autoload 'all-the-icons-insert "all-the-icons" "\
Interactive icon insertion function.
When Prefix ARG is non-nil, insert the propertized icon.
When FAMILY is non-nil, limit the candidates to the icon set matching it.

\(fn &optional ARG FAMILY)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "all-the-icons"
;;;;;;  "../../../../../../../.emacs.d/elpa/all-the-icons-20191114.1836/all-the-icons.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/all-the-icons-20191114.1836/all-the-icons.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "all-the-icons" '("all" "define-icon" "faicon" "fileicon" "material" "octicon" "wicon")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/all-the-icons-20191114.1836/all-the-icons-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/all-the-icons-20191114.1836/all-the-icons-faces.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/all-the-icons-20191114.1836/all-the-icons-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/all-the-icons-20191114.1836/all-the-icons.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; all-the-icons-autoloads.el ends here
