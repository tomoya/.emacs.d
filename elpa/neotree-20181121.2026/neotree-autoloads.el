;;; neotree-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "neotree" "../../../../../../../.emacs.d/elpa/neotree-20181121.2026/neotree.el"
;;;;;;  "3c000e862afb02e2844da284c50e9905")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/neotree-20181121.2026/neotree.el

(autoload 'neotree-find "neotree" "\
Quick select node which specified PATH in NeoTree.
If path is nil and no buffer file name, then use DEFAULT-PATH,

\(fn &optional PATH DEFAULT-PATH)" t nil)

(autoload 'neotree-projectile-action "neotree" "\
Integration with `Projectile'.

Usage:
    (setq projectile-switch-project-action 'neotree-projectile-action).

When running `projectile-switch-project' (C-c p p), `neotree' will change root
automatically.

\(fn)" t nil)

(autoload 'neotree-toggle "neotree" "\
Toggle show the NeoTree window.

\(fn)" t nil)

(autoload 'neotree-show "neotree" "\
Show the NeoTree window.

\(fn)" t nil)

(autoload 'neotree-hide "neotree" "\
Close the NeoTree window.

\(fn)" t nil)

(autoload 'neotree-dir "neotree" "\
Show the NeoTree window, and change root to PATH.

\(fn PATH)" t nil)

(defalias 'neotree 'neotree-show "\
Show the NeoTree window.")

;;;### (autoloads "actual autoloads are elsewhere" "neotree" "../../../../../../../.emacs.d/elpa/neotree-20181121.2026/neotree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/neotree-20181121.2026/neotree.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "neotree" '("neo" "off-p")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/neotree-20181121.2026/neotree-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/neotree-20181121.2026/neotree-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/neotree-20181121.2026/neotree.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; neotree-autoloads.el ends here
