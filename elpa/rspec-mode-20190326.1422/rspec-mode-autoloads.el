;;; rspec-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "rspec-mode" "../../../../../../../.emacs.d/elpa/rspec-mode-20190326.1422/rspec-mode.el"
;;;;;;  "d1efd0266e6ebf0166dc728a300f81a4")
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/rspec-mode-20190326.1422/rspec-mode.el

(autoload 'rspec-mode "rspec-mode" "\
Minor mode for RSpec files

If called interactively, enable Rspec mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\\{rspec-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'rspec-verifiable-mode "rspec-mode" "\
Minor mode for Ruby files that have specs

If called interactively, enable Rspec-Verifiable mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\\{rspec-verifiable-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'rspec-dired-mode "rspec-mode" "\
Minor mode for Dired buffers with spec files

If called interactively, enable Rspec-Dired mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\\{rspec-dired-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'rspec-buffer-is-spec-p "rspec-mode" "\
Return true if the current buffer is a spec." nil nil)

(autoload 'rspec-enable-appropriate-mode "rspec-mode" nil nil nil)

(dolist (hook '(ruby-mode-hook enh-ruby-mode-hook)) (add-hook hook 'rspec-enable-appropriate-mode))

(add-hook 'rails-minor-mode-hook 'rspec-verifiable-mode)

;;;### (autoloads "actual autoloads are elsewhere" "rspec-mode" "../../../../../../../.emacs.d/elpa/rspec-mode-20190326.1422/rspec-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.emacs.d/elpa/rspec-mode-20190326.1422/rspec-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rspec-mode" '("rspec")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/elpa/rspec-mode-20190326.1422/rspec-mode-autoloads.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/rspec-mode-20190326.1422/rspec-mode-pkg.el"
;;;;;;  "../../../../../../../.emacs.d/elpa/rspec-mode-20190326.1422/rspec-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rspec-mode-autoloads.el ends here
