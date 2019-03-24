;;; flycheck-posframe.el --- Show flycheck error messages using posframe.el

;; Copyright (C) 2018 Alex Murray

;; Author: Alex Murray <murray.alex@gmail.com>
;; Maintainer: Alex Murray <murray.alex@gmail.com>
;; URL: https://github.com/alexmurray/flycheck-posframe
;; Package-Version: 20180322.607
;; Version: 0.5
;; Package-Requires: ((flycheck "0.24") (emacs "26") (posframe "0.3.0"))

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

;;; Commentary:

;; Show flycheck error messages using posframe.el

;;;; Setup

;; (with-eval-after-load 'flycheck
;;    (require 'flycheck-posframe)
;;    (add-hook 'flycheck-mode-hook #'flycheck-posframe-mode))

;;; Code:
(require 'flycheck)
(require 'posframe)

(defgroup flycheck-posframe nil
  "Display Flycheck errors in tooltips using posframe.el."
  :prefix "flycheck-posframe-"
  :group 'flycheck
  :link '(url-link :tag "Github" "https://github.com/alexmurray/flycheck-posframe"))

(defcustom flycheck-posframe-prefix "\u27a4 "
  "String to be displayed before every default message in posframe."
  :group 'flycheck-posframe
  :type 'string
  :package-version '(flycheck-posframe . "0.3"))

(defcustom flycheck-posframe-info-prefix flycheck-posframe-prefix
  "String to be displayed before every info message in posframe."
  :group 'flycheck-posframe
  :type 'string
  :package-version '(flycheck-posframe . "0.3"))

(defcustom flycheck-posframe-warning-prefix flycheck-posframe-prefix
  "String to be displayed before every warning message in posframe."
  :group 'flycheck-posframe
  :type 'string
  :package-version '(flycheck-posframe . "0.3"))

(defcustom flycheck-posframe-error-prefix flycheck-posframe-prefix
  "String to be displayed before every error message in posframe."
  :group 'flycheck-posframe
  :type 'string
  :package-version '(flycheck-posframe . "0.1"))

(defface flycheck-posframe-face
  '((t :inherit default))
  "The default face to use for displaying messages in posframe."
  :group 'flycheck-posframe
  :package-version '(flycheck-posframe . "0.2"))

(defface flycheck-posframe-info-face
  '((t :inherit flycheck-posframe-face))
  "The face to use for displaying info messages in posframe."
  :group 'flycheck-posframe
  :package-version '(flycheck-posframe . "0.3"))

(defface flycheck-posframe-warning-face
  '((t :inherit flycheck-posframe-face))
  "The face to use for displaying warning messages in posframe."
  :group 'flycheck-posframe
  :package-version '(flycheck-posframe . "0.3"))

(defface flycheck-posframe-error-face
  '((t :inherit flycheck-posframe-face))
  "The face to use for displaying warning messages in posframe."
  :group 'flycheck-posframe
  :package-version '(flycheck-posframe . "0.3"))

(defface flycheck-posframe-background-face
  '((t))
  "The background color of the flycheck-posframe frame.
Only the `background' is used in this face."
  :group 'flycheck-posframe
  :package-version '(flycheck-posframe . "0.4"))

(defvar flycheck-posframe-buffer "*flycheck-posframe-buffer*"
  "The posframe buffer name use by flycheck-posframe.")

(defvar flycheck-posframe-old-display-function nil
  "The former value of `flycheck-display-errors-function'.")

(defvar flycheck-posframe-hide-posframe-hooks
  '(pre-command-hook post-command-hook focus-out-hook)
  "The hooks which should trigger automatic removal of the posframe.")

(defun flycheck-posframe-hide-posframe ()
  "Hide messages currently being shown if any."
  ;; hide posframe instead of deleting it to avoid flicker or worse crashes etc
  ;; on MacOS (see https://github.com/alexmurray/flycheck-posframe/issues/8)
  (posframe-hide flycheck-posframe-buffer)
  (dolist (hook flycheck-posframe-hide-posframe-hooks)
    (remove-hook hook #'flycheck-posframe-hide-posframe t)))

(defun flycheck-posframe-get-prefix-for-error (err)
  "Return the prefix which should be used to display ERR."
  (pcase (flycheck-error-level err)
    ('info flycheck-posframe-info-prefix)
    ('warning flycheck-posframe-warning-prefix)
    ('error flycheck-posframe-error-prefix)
    (_ flycheck-posframe-prefix)))

(defun flycheck-posframe-get-face-for-error (err)
  "Return the face which should be used to display ERR."
  (pcase (flycheck-error-level err)
    ('info 'flycheck-posframe-info-face)
    ('warning 'flycheck-posframe-warning-face)
    ('error 'flycheck-posframe-error-face)
    (_ 'flycheck-posframe-face)))

(defun flycheck-posframe-format-error (err)
  "Formats ERR for display."
  (propertize (concat
               (flycheck-posframe-get-prefix-for-error err)
               (flycheck-error-format-message-and-id err))
              'face
              `(:inherit ,(flycheck-posframe-get-face-for-error err))) )

(defun flycheck-posframe-format-errors (errors)
  "Formats ERRORS messages for display."
  (let ((messages (sort
                   (mapcar #'flycheck-posframe-format-error
                           (delete-dups errors))
                   'string-lessp)))
    (mapconcat 'identity messages "\n")))

(defun flycheck-posframe-show-posframe (errors)
  "Display ERRORS, using posframe.el library."
  (flycheck-posframe-hide-posframe)
  (when errors
    (posframe-show
     flycheck-posframe-buffer
     :string (flycheck-posframe-format-errors errors)
     :background-color (face-background 'flycheck-posframe-background-face nil t)
     :position (point))
    (dolist (hook flycheck-posframe-hide-posframe-hooks)
      (add-hook hook #'flycheck-posframe-hide-posframe nil t))))

;;;###autoload
(defun flycheck-posframe-configure-pretty-defaults ()
  "Configure some nicer settings for prettier display."
  (setq flycheck-posframe-warning-prefix "\u26a0 ")
  (setq flycheck-posframe-error-prefix "\u274c ")
  (set-face-attribute 'flycheck-posframe-warning-face nil :inherit 'warning)
  (set-face-attribute 'flycheck-posframe-error-face nil :inherit 'error))

;;;###autoload
(define-minor-mode flycheck-posframe-mode
  "A minor mode to show Flycheck error messages in a posframe."
  :lighter nil
  :group 'flycheck-posframe
  (cond
   ;; Use our display function and remember the old one but only if we haven't
   ;; yet configured it, to avoid activating twice.
   ((and flycheck-posframe-mode
         (not (eq flycheck-display-errors-function
                  #'flycheck-posframe-show-posframe)))
    (setq-local flycheck-posframe-old-display-function
                flycheck-display-errors-function)
    (setq-local flycheck-display-errors-function
                #'flycheck-posframe-show-posframe))
   ;; Reset the display function and remove ourselves from all hooks but only
   ;; if the mode is still active.
   ((and (not flycheck-posframe-mode)
         (eq flycheck-display-errors-function
             #'flycheck-posframe-show-posframe))
    (setq-local flycheck-display-errors-function
                flycheck-posframe-old-display-function)
    (setq-local flycheck-posframe-old-display-function nil))))

(provide 'flycheck-posframe)
;;; flycheck-posframe.el ends here
