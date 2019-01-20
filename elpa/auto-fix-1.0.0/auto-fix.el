;;; auto-fix.el --- Fix current buffer automatically -*- lexical-binding: t -*-

;; Copyright (C) 2019 tomoya.

;; Author: Tomoya Otake <tomoya.ton@gmail.com>
;; Maintainer: Tomoya Otake <tomoya.ton@gmail.com>
;; Keywords: linter, languages, tools
;; Version: 1.0.0
;; X-URL: https://github.com/tomoya/auto-fix/
;; Package-Requires: ((emacs "26.1"))

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; auto-fix-show-errors, auto-fix(), auto-fix--delete-whole-line(),
;; auto-fix--apply-rcs-patch(), auto-fix--kill-error-buffer()
;; originally are:

;; Copyright (c) 2014 The go-mode Authors. All rights reserved.

;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions are
;; met:

;;    * Redistributions of source code must retain the above copyright
;; notice, this list of conditions and the following disclaimer.
;;    * Redistributions in binary form must reproduce the above
;; copyright notice, this list of conditions and the following disclaimer
;; in the documentation and/or other materials provided with the
;; distribution.
;;    * Neither the name of the copyright holder nor the names of its
;; contributors may be used to endorse or promote products derived from
;; this software without specific prior written permission.

;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
;; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
;; OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
;; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
;; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
;; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
;; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
;; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
;; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

;;; Commentary:

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Introduction
;; ------------
;;
;; This package is a minor mode to fix current buffer automatically.
;;
;;
;; Variables
;; ---------
;;
;; This package have 2 important buffer local variables.
;; Please let you set using the hook.
;;
;; * `auto-fix-command'
;;
;; This is the command to fix code.
;; Default value is `nil`.
;;
;; * `auto-fix-option'
;;
;; This is the option string to fix for the command.
;; Default value is `--fix`.
;;
;; Setup
;; -----
;;
;; To enable auto-fix before saving add the following to your init file:
;;
;;    (defun setup-ts-auto-fix ()
;;      (setq-local auto-fix-command "tslint")
;;      (auto-fix-mode +1))
;;
;;    (add-hook 'auto-fix-mode-hook
;;              (lambda () (add-hook 'before-save-hook #'auto-fix-before-save)))
;;
;;    (add-hook 'typescript-mode-hook #'setup-ts-auto-fix)
;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; code:

(require 'cl-lib)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; User Variables:

(defgroup auto-fix nil
  "Fix current buffer automatically."
  :prefix "auto-fix-"
  :group 'tools)

(defcustom auto-fix-show-errors 'buffer
  "Where to display auto fix error output.
It can either be displayed in its own buffer, in the echo area, or not at all.
Please note that Emacs outputs to the echo area when writing
files and will overwrite auto fix's echo output if used from inside
a `before-save-hook'."
  :type '(choice
          (const :tag "Own buffer" buffer)
          (const :tag "Echo area" echo)
          (const :tag "None" nil))
  :group 'auto-fix)

(defcustom auto-fix-mode-hook nil
  "Hook called by `auto-fix-mode'."
  :type 'hook
  :group 'auto-fix)

(defvar-local auto-fix-temp-file-prefix "auto_fix_"
  "Temp file name prefix.")

(defvar-local auto-fix-command nil
  "Set auto-fix command.")

(defvar-local auto-fix-option "--fix"
  "Set fix option string.
Default is `--fix`")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Define mode

;;;###autoload
(define-minor-mode auto-fix-mode
  "Toggle auto-fix-mode."
  :lighter    " Auto-Fix"
  :init-value nil
  :group      'auto-fix)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; User commands

;;;###autoload
(defun auto-fix-before-save ()
  "Add this to .emacs to run gofmt on the current buffer when saving:
\(add-hook 'before-save-hook 'auto-fix-before-save)."
  (interactive)
  (when auto-fix-mode
    (if auto-fix-command
        (auto-fix)
      (message "`auto-fix-command' is nil. please set `auto-fix-command' first."))))

(defun auto-fix ()
  "Format the current buffer according to the formatting tool.
The tool used can be set via ‘auto-fix-command` and additional
arguments can be set as a list via ‘auto-fix-option`."
  (interactive)
  (let ((tmpfile (auto-fix--make-temp-file))
        (patchbuf (get-buffer-create "*Auto-fix patch*"))
        (errbuf (if auto-fix-show-errors (get-buffer-create "*Auto-fix Errors*")))
        (coding-system-for-read 'utf-8)
        (coding-system-for-write 'utf-8)
        our-auto-fix-args)

    (unwind-protect
        (save-restriction
          (widen)
          (if errbuf
              (with-current-buffer errbuf
                (setq buffer-read-only nil)
                (erase-buffer)))
          (with-current-buffer patchbuf
            (erase-buffer))

          (write-region nil nil tmpfile)

          (setq our-auto-fix-args
                (append our-auto-fix-args (list auto-fix-option tmpfile)))
          (message "Calling auto-fix: %s %s" auto-fix-command our-auto-fix-args)
          (if (zerop (apply #'process-file auto-fix-command nil errbuf nil our-auto-fix-args))
              (progn
                ;; There is no remote variant of ‘call-process-region’, but we
                ;; can invoke diff locally, and the results should be the same.
                (if (zerop (let ((local-copy (file-local-copy tmpfile)))
                             (unwind-protect
                                 (call-process-region
                                  (point-min) (point-max) "diff" nil patchbuf
                                  nil "-n" "-" (or local-copy tmpfile))
                               (when local-copy (delete-file local-copy)))))
                    (message "Buffer is already auto fixed")
                  (auto-fix--apply-rcs-patch patchbuf)
                  (message "Applied auto fix"))
                (if errbuf (auto-fix--kill-error-buffer errbuf)))
            (message "Could not apply auto fix")))

      (kill-buffer patchbuf)
      (delete-file tmpfile))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Internal functions

(defun auto-fix--make-temp-file ()
  "Create temporary file at same directory for creating patch."
  (let ((basename (file-name-base buffer-file-name))
        (suffix (concat "." (file-name-extension buffer-file-name))))
    (make-empty-file (concat auto-fix-temp-file-prefix basename suffix)) ; return nil
    (concat default-directory auto-fix-temp-file-prefix basename suffix)))

(defun auto-fix--delete-whole-line (&optional arg)
  "Delete the current line without putting it in the `kill-ring'.
Derived from function `kill-whole-line'.  ARG is defined as for that
function."
  (setq arg (or arg 1))
  (if (and (> arg 0)
           (eobp)
           (save-excursion (forward-visible-line 0) (eobp)))
      (signal 'end-of-buffer nil))
  (if (and (< arg 0)
           (bobp)
           (save-excursion (end-of-visible-line) (bobp)))
      (signal 'beginning-of-buffer nil))
  (cond ((zerop arg)
         (delete-region (progn (forward-visible-line 0) (point))
                        (progn (end-of-visible-line) (point))))
        ((< arg 0)
         (delete-region (progn (end-of-visible-line) (point))
                        (progn (forward-visible-line (1+ arg))
                               (unless (bobp)
                                 (backward-char))
                               (point))))
        (t
         (delete-region (progn (forward-visible-line 0) (point))
                        (progn (forward-visible-line arg) (point))))))

(defun auto-fix--apply-rcs-patch (patch-buffer)
  "Apply an RCS-formatted diff from PATCH-BUFFER to the current buffer."
  (let ((target-buffer (current-buffer))
        ;; Relative offset between buffer line numbers and line numbers
        ;; in patch.
        ;;
        ;; Line numbers in the patch are based on the source file, so
        ;; we have to keep an offset when making changes to the
        ;; buffer.
        ;;
        ;; Appending lines decrements the offset (possibly making it
        ;; negative), deleting lines increments it. This order
        ;; simplifies the forward-line invocations.
        (line-offset 0)
        (column (current-column)))
    (save-excursion
      (with-current-buffer patch-buffer
        (goto-char (point-min))
        (while (not (eobp))
          (unless (looking-at "^\\([ad]\\)\\([0-9]+\\) \\([0-9]+\\)")
            (error "Invalid rcs patch or internal error in auto-fix--apply-rcs-patch"))
          (forward-line)
          (let ((action (match-string 1))
                (from (string-to-number (match-string 2)))
                (len  (string-to-number (match-string 3))))
            (cond
             ((equal action "a")
              (let ((start (point)))
                (forward-line len)
                (let ((text (buffer-substring start (point))))
                  (with-current-buffer target-buffer
                    (cl-decf line-offset len)
                    (goto-char (point-min))
                    (forward-line (- from len line-offset))
                    (insert text)))))
             ((equal action "d")
              (with-current-buffer target-buffer
                (goto-char (point-min))
                (forward-line (1- (- from line-offset)))
                 (cl-incf line-offset len)
                (auto-fix--delete-whole-line len)))
             (t
              (error "Invalid rcs patch or internal error in auto-fix--apply-rcs-patch")))))))
    (move-to-column column)))

(defun auto-fix--kill-error-buffer (errbuf)
  "Kill ERRBUF buffer."
  (let ((win (get-buffer-window errbuf)))
    (if win
        (quit-window t win)
      (kill-buffer errbuf))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'auto-fix)

;;; auto-fix.el ends here
