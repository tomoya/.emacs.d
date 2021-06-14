;;; embark-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark.el

(defun embark--record-this-command nil "\
Record command which opened the minibuffer.
We record this because it will be the default action.
This function is meant to be added to `minibuffer-setup-hook'." (setq-local embark--command this-command))

(add-hook 'minibuffer-setup-hook #'embark--record-this-command)

(autoload 'embark-prefix-help-command "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Prompt for and run a command bound in the prefix used to reach this command.
The prefix described consists of all but the last event of the
key sequence that ran this command.  This function is intended to
be used as a value for `prefix-help-command'.

In addition to using completion to select a command, you can also
type @ and the key binding (without the prefix)." t nil)

(autoload 'embark-bindings "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Explore all current command key bindings with `completing-read'.
The selected command will be executed.  The set of key bindings can
be restricted by passing a PREFIX key.

\(fn &optional PREFIX)" t nil)

(autoload 'embark-act "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Prompt the user for an action and perform it.
The target of the action is chosen by `embark-target-finders'.
By default, if called from a minibuffer the target is the top
completion candidate, if called from an Embark Collect or a
Completions buffer it is the candidate at point.

This command uses `embark-prompter' to ask the user to specify an
action, and calls it injecting the target at the first minibuffer
prompt.

If you call this from the minibuffer, it can optionally quit the
minibuffer.  The variable `embark-quit-after-action' controls
whether calling `embark-act' with nil ARG quits the minibuffer,
and if ARG is non-nil it will do the opposite.  Interactively,
ARG is the prefix argument.

\(fn &optional ARG)" t nil)

(autoload 'embark-dwim "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Run the default action on the current target.
The target of the action is chosen by `embark-target-finders'.

If the target comes from minibuffer completion, then the default
action is the command that opened the minibuffer in the first
place, unless overidden by `embark-default-action-overrides'.

For targets that do not come from minibuffer completion
\(typically some thing at point in a regular buffer) and whose
type is not listed in `embark-default-action-overrides', the
default action is given by whatever binding RET has in the action
keymap for the target's type.

See `embark-act' for the meaning of the prefix ARG.

\(fn &optional ARG)" t nil)

(autoload 'embark-become "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Make current command become a different command.
Take the current minibuffer input as initial input for new
command.  The new command can be run normally using key bindings or
\\[execute-extended-command], but if the current command is found in a keymap in
`embark-become-keymaps', that keymap is activated to provide
convenient access to the other commands in it.

If FULL is non-nil (interactively, if called with a prefix
argument), the entire minibuffer contents are used as the initial
input of the new command.  By default only the part of the
minibuffer contents between the current completion boundaries is
taken.  What this means is fairly technical, but (1) usually
there is no difference: the completion boundaries include the
entire minibuffer contents, and (2) the most common case where
these notions differ is file completion, in which case the
completion boundaries single out the path component containing
point.

\(fn &optional FULL)" t nil)

(autoload 'embark-collect-live "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Create a live-updating Embark Collect buffer.
Optionally start in INITIAL-VIEW (either `list' or `grid')
instead of what `embark-collect-initial-view-alist' specifies.
Interactively, \\[universal-argument] means grid view, a prefix
argument of 1 means list view.

To control the display, add an entry to `display-buffer-alist'
with key \"Embark Collect Live\".

\(fn &optional INITIAL-VIEW)" t nil)

(autoload 'embark-collect-snapshot "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Create an Embark Collect buffer.
Optionally start in INITIAL-VIEW (either `list' or `grid')
instead of what `embark-collect-initial-view-alist' specifies.
Interactively, \\[universal-argument] means grid view, a prefix
argument of 1 means list view.

To control the display, add an entry to `display-buffer-alist'
with key \"Embark Collect\".

\(fn &optional INITIAL-VIEW)" t nil)

(autoload 'embark-collect-completions "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Create an ephemeral live-updating Embark Collect buffer." t nil)

(autoload 'embark-collect-completions-after-delay "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Start `embark-collect-live' after `embark-collect-live-initial-delay'.
Add this function to `minibuffer-setup-hook' to have an Embark
Live Collect buffer popup every time you use the minibuffer." nil nil)

(autoload 'embark-collect-completions-after-input "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Start `embark-collect-completions' after some minibuffer input.
Add this function to `minibuffer-setup-hook' to have an Embark
Live Collect buffer popup soon after you type something in the
minibuffer; the length of the delay after typing is given by
`embark-collect-live-initial-delay'." nil nil)

(autoload 'embark-switch-to-collect-completions "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Switch to the Embark Collect Completions buffer, creating it if necessary." t nil)

(autoload 'embark-export "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" "\
Create a type-specific buffer to manage current candidates.
The variable `embark-exporters-alist' controls how to make the
buffer for each type of completion." t nil)

(register-definition-prefixes "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark" '("embark-"))

;;;***

;;;### (autoloads nil nil ("../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark-autoloads.el"
;;;;;;  "../../../../../../../../../.config/emacs/elpa/embark-20210613.2024/embark-pkg.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; embark-autoloads.el ends here
