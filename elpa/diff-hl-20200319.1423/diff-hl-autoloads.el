;;; diff-hl-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "diff-hl" "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl.el"
;;;;;;  "426ff9e661cfe3e09abff0a9de083bd1")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl.el

(autoload 'diff-hl-mode "diff-hl" "\
Toggle VC diff highlighting.

If called interactively, enable Diff-Hl mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-diff-hl-mode "diff-hl" "\
Turn on `diff-hl-mode' or `diff-hl-dir-mode' in a buffer if appropriate." nil nil)

(put 'global-diff-hl-mode 'globalized-minor-mode t)

(defvar global-diff-hl-mode nil "\
Non-nil if Global Diff-Hl mode is enabled.
See the `global-diff-hl-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-diff-hl-mode'.")

(custom-autoload 'global-diff-hl-mode "diff-hl" nil)

(autoload 'global-diff-hl-mode "diff-hl" "\
Toggle Diff-Hl mode in all buffers.
With prefix ARG, enable Global Diff-Hl mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Diff-Hl mode is enabled in all buffers where
`turn-on-diff-hl-mode' would do it.
See `diff-hl-mode' for more information on Diff-Hl mode.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "diff-hl" "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "diff-hl" '("diff-hl-")))

;;;***

;;;***

;;;### (autoloads nil "diff-hl-amend" "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-amend.el"
;;;;;;  "1d6e113a9bd0373b5859246f916f9f93")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-amend.el

(autoload 'diff-hl-amend-mode "diff-hl-amend" "\
Show changes against the second-last revision in `diff-hl-mode'.
Most useful with backends that support rewriting local commits,
and most importantly, 'amending' the most recent one.
Currently only supports Git, Mercurial and Bazaar.

If called interactively, enable Diff-Hl-Amend mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'global-diff-hl-amend-mode 'globalized-minor-mode t)

(defvar global-diff-hl-amend-mode nil "\
Non-nil if Global Diff-Hl-Amend mode is enabled.
See the `global-diff-hl-amend-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-diff-hl-amend-mode'.")

(custom-autoload 'global-diff-hl-amend-mode "diff-hl-amend" nil)

(autoload 'global-diff-hl-amend-mode "diff-hl-amend" "\
Toggle Diff-Hl-Amend mode in all buffers.
With prefix ARG, enable Global Diff-Hl-Amend mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Diff-Hl-Amend mode is enabled in all buffers where
`turn-on-diff-hl-amend-mode' would do it.
See `diff-hl-amend-mode' for more information on Diff-Hl-Amend mode.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "diff-hl-amend"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-amend.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-amend.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "diff-hl-amend" '("diff-hl-amend-setup" "turn-on-diff-hl-amend-mode")))

;;;***

;;;***

;;;### (autoloads nil "diff-hl-dired" "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-dired.el"
;;;;;;  "a5f517561fc9162cbb044308275549f8")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-dired.el

(autoload 'diff-hl-dired-mode "diff-hl-dired" "\
Toggle VC diff highlighting on the side of a Dired window.

If called interactively, enable Diff-Hl-Dired mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'diff-hl-dired-mode-unless-remote "diff-hl-dired" nil nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "diff-hl-dired"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-dired.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-dired.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "diff-hl-dired" '("diff-hl-dired-")))

;;;***

;;;***

;;;### (autoloads nil "diff-hl-flydiff" "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-flydiff.el"
;;;;;;  "672bb9def9130fd569c95177d608b8cd")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-flydiff.el

(defvar diff-hl-flydiff-mode nil "\
Non-nil if Diff-Hl-Flydiff mode is enabled.
See the `diff-hl-flydiff-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `diff-hl-flydiff-mode'.")

(custom-autoload 'diff-hl-flydiff-mode "diff-hl-flydiff" nil)

(autoload 'diff-hl-flydiff-mode "diff-hl-flydiff" "\
Perform highlighting on-the-fly.
This is a global minor mode.  It alters how `diff-hl-mode' works.

If called interactively, enable Diff-Hl-Flydiff mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "diff-hl-flydiff"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-flydiff.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-flydiff.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "diff-hl-flydiff" '("diff-hl-flydiff")))

;;;***

;;;***

;;;### (autoloads nil "diff-hl-margin" "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-margin.el"
;;;;;;  "d975a453ee2509c5c9fe15097dafec25")
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-margin.el

(defvar diff-hl-margin-mode nil "\
Non-nil if Diff-Hl-Margin mode is enabled.
See the `diff-hl-margin-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `diff-hl-margin-mode'.")

(custom-autoload 'diff-hl-margin-mode "diff-hl-margin" nil)

(autoload 'diff-hl-margin-mode "diff-hl-margin" "\
Toggle displaying `diff-hl-mode' highlights on the margin.

If called interactively, enable Diff-Hl-Margin mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "diff-hl-margin"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-margin.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-margin.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "diff-hl-margin" '("diff-hl-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-amend.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-dired.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-flydiff.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-margin.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl-pkg.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/diff-hl-20200319.1423/diff-hl.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; diff-hl-autoloads.el ends here
