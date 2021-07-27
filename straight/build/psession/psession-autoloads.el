;;; psession-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "psession" "psession.el" (0 0 0 0))
;;; Generated autoloads from psession.el

(autoload 'psession-make-persistent-variable "psession" "\
Make symbol variable VAR persistent with psession.

Do not make `minibuffer-history' variables persistent from here,
enable instead `psession-savehist-mode'.

Variable VAR is added to `psession-object-to-save-alist'.

When used interactively or SAVE is non nil, save VAR in
`psession-object-to-save-alist' with customize.

This function is meant to be used interactively, but
if called from elisp in e.g. -your init file- you don't need to specify
SAVE arg.

\(fn VAR &optional SAVE)" t nil)

(autoload 'psession-save-winconf "psession" "\
Save persistently current window config to PLACE.
Arg PLACE is the key of an entry in `psession--winconf-alist'.

\(fn PLACE)" t nil)

(autoload 'psession-restore-winconf "psession" "\
Restore window config CONF.
Arg CONF is an entry in `psession--winconf-alist'.

\(fn CONF)" t nil)

(autoload 'psession-delete-winconf "psession" "\
Delete window config CONF from `psession--winconf-alist'.

\(fn CONF)" t nil)

(defvar psession-savehist-mode nil "\
Non-nil if Psession-Savehist mode is enabled.
See the `psession-savehist-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `psession-savehist-mode'.")

(custom-autoload 'psession-savehist-mode "psession" nil)

(autoload 'psession-savehist-mode "psession" "\
Save minibuffer-history variables persistently.

This is a minor mode.  If called interactively, toggle the
`Psession-Savehist mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value 'psession-savehist-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(defvar psession-autosave-mode nil "\
Non-nil if Psession-Autosave mode is enabled.
See the `psession-autosave-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `psession-autosave-mode'.")

(custom-autoload 'psession-autosave-mode "psession" nil)

(autoload 'psession-autosave-mode "psession" "\
Auto save emacs session when enabled.

This is a minor mode.  If called interactively, toggle the
`Psession-Autosave mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value 'psession-autosave-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(defvar psession-mode nil "\
Non-nil if Psession mode is enabled.
See the `psession-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `psession-mode'.")

(custom-autoload 'psession-mode "psession" nil)

(autoload 'psession-mode "psession" "\
Persistent emacs sessions.

This is a minor mode.  If called interactively, toggle the
`Psession mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value 'psession-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "psession" '("psession-"))

;;;***

(provide 'psession-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; psession-autoloads.el ends here
