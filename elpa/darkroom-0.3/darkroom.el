;;; darkroom.el --- Remove visual distractions and focus on writing  -*- lexical-binding: t; -*-

;; Copyright (C) 2014  Free Software Foundation, Inc.

;; Author: João Távora <joaotavora@gmail.com>
;; Maintainer: João Távora <joaotavora@gmail.com>
;; Keywords: convenience, emulations
;; Package-Requires: ((cl-lib "0.5"))
;; Version: 0.3

;; This program is free software; you can redistribute it and/or modify
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

;; The main entrypoints to this extension are two minor modes:
;;
;;    M-x darkroom-mode
;;    M-x darkroom-tentative-mode
;;
;; `darkroom-mode' makes visual distractions disappear: the
;; mode-line is temporarily elided, text is enlarged and margins are
;; adjusted so that it's centered on the window.
;;
;; `darkroom-tentative-mode' is similar, but it doesn't immediately
;; turn-on `darkroom-mode', unless the current buffer lives in the
;; sole window of the Emacs frame (i.e. all other windows are
;; deleted). Whenever the frame is split to display more windows and
;; more buffers, the buffer exits `darkroom-mode'. Whenever they are
;; deleted, the buffer re-enters `darkroom-mode'.
;;
;; Personally, I always use `darkroom-tentative-mode'.
;;
;; See also the customization options `darkroom-margins' and
;; `darkroom-fringes-outside-margins', which affect both modes.

;;; Code:

(require 'cl-lib)
(require 'face-remap)

(defgroup darkroom nil
  "Remove visual distractions and focus on writing"
  :prefix "darkroom-"
  :group 'emulations)

(defcustom darkroom-margins 'darkroom-guess-margins
  "Margins to use in `darkroom-mode'.

Its value can be:

- a floating point value betweeen 0 and 1, specifies percentage of
  window width in columns to use as a margin.

- a cons cell (LEFT RIGHT) specifying the left and right margins
  in columns.

- a function of a single argument, a window, that returns a cons
  cell interpreted like the previous option. An example is
  `darkroom-guess-margins', which see. Beware that this function
  is called very often, so if it does some non-trivial processing
  on the buffer's text, consider caching that value.

Value is effective when `darkroom-mode' is toggled."
  :type '(choice float
                 (cons integer integer)
                 (function-item darkroom-guess-margins :doc "Guess margins")
                 (function darkroom-guess-margins))
  :group 'darkroom)

(defcustom darkroom-text-scale-increase 2
  "Steps to increase text size when in `darkroom-mode'.
Value is passed to `text-scale-increase'."
  :type 'integer
  :group 'darkroom)

(defcustom darkroom-fringes-outside-margins t
  "If non-nil use fringes outside margins for `darkroom-mode'"
  :type 'boolean
  :group 'darkroom)

(defcustom darkroom-margin-increment 0.05
  "Increment to add used in `darkroom-increase-margins'."
  :type 'float
  :group 'darkroom)

(defcustom darkroom-margins-if-failed-guess 0.15
  "Margins when `darkroom-guess-margins' fails.
If `darkroom-guess-margins' failed to figure out margins to
center the text, use this percentage of window width for the
symmetical margins."
  :type 'float
  :group 'darkroom)

(defcustom darkroom-verbose nil
  "If non-nil, be verbose about darkroom operations."
  :type 'boolean
  :group 'darkroom)

(defvar darkroom--guess-margins-statistics-cache nil
  "Cache used by `darkroom-guess-margins'.")

(defun darkroom--window-width (&optional window)
  "Calculate width of WINDOW in columns, considering text scaling.
WINDOW defaults to the currently selected window. The function
assumes the buffer to be filled with at least one character of an
arbitrary, but fixed width. Narrowing is taken in consideration.
The return value is a cons (COLS . SCALED-CHAR-WIDTH) where COLS
is the desired width in columns and SCALED-CHAR-WIDTH is the
width in pixels of a single character."
  (when (= (point-min) (point-max))
    (error "Cannot calculate the width of a single character"))
  (let* ((window (or window (selected-window)))
         (scaled-char-width (car (window-text-pixel-size
                                  window
                                  (point-min) (1+ (point-min)))))
         (char-width (frame-char-width))
         (margins (window-margins window)))
    (cons (truncate
           (+ (window-width window 'pixelwise)
              (* char-width (or (car margins) 0))
              (* char-width (or (cdr margins) 0)))
           scaled-char-width)
          scaled-char-width)))

(defun darkroom-guess-margins (window)
  "Guess suitable margins for `darkroom-margins'.
If in suitable conditions, collect some statistics about the
buffer's line lengths, and apply a heuristic to figure out how
wide to set the margins, comparing it to WINDOW's width in
columns. If the buffer's paragraphs are mostly filled to
`fill-column', margins should center it on the window, otherwise,
the margins specified in `darkroom-margins-if-failed-guess'.

In any of these conditions,`darkroom-margins-if-failed-guess' is
also used:

* if `visual-line-mode' is on;
* if `variable-pitch-mode' is on;
* if the buffer is empty.

For testing purposes, WINDOW can also be an integer number which
is a width in columns, in which case it will be used instead of a
window's geometry."
  (if (or visual-line-mode
          (and buffer-face-mode
               (eq 'variable-pitch buffer-face-mode-face))
          (= (point-min) (point-max)))
      darkroom-margins-if-failed-guess
    (let* ((window-width-info (if (integerp window)
                                  window
                                (darkroom--window-width window)))
           (window-width (car window-width-info))
           (scaled-char-width (cdr window-width-info))
           (top-quartile-avg
            (or darkroom--guess-margins-statistics-cache
                (set
                 (make-local-variable 'darkroom--guess-margins-statistics-cache)
                 (let* ((line-widths
                         (save-excursion
                           (goto-char (point-min))
                           (cl-loop for start = (point)
                                    while (search-forward "\n"
                                                          (+ 20000 (point-min))
                                                          'no-error)
                                    for width = (truncate
                                                 (car
                                                  (window-text-pixel-size
                                                   window
                                                   start (1- (point))))
                                                 scaled-char-width)
                                    unless (zerop width)
                                    collect width)))
                        (n4 (max 1 (/ (length line-widths) 4))))
                   (/ (apply '+ (cl-subseq (sort line-widths '>) 0 n4)) n4))))))
      (cond
       ((> top-quartile-avg
           window-width)
        (message "Long lines detected. Consider turning on `visual-line-mode'")
        darkroom-margins-if-failed-guess)
       ((> top-quartile-avg (* 0.9 fill-column))
        ;; calculate margins so that `fill-column' + 1 colums are
        ;; centered on the window.
        ;; 
        (let ((margin (truncate (* (- window-width (1+ fill-column))
                                   (/ (float scaled-char-width)
                                      (frame-char-width)))
                                2)))
          (if darkroom-verbose
              (message "Choosing %s-wide margins based on fill-column %s"
                       margin fill-column))
          (cons margin margin)))
       (t
        darkroom-margins-if-failed-guess)))))

(defun darkroom--compute-margins (window)
  "From `darkroom-margins', computes desired margins for WINDOW."
  (let ((darkroom-margins
         (if (functionp darkroom-margins)
             (funcall darkroom-margins window)
           darkroom-margins)))
    (cond ((consp darkroom-margins)
           darkroom-margins)
          ((and (floatp darkroom-margins)
                (< darkroom-margins 1))
           (let ((delta (darkroom--float-to-columns darkroom-margins)))
             (cons delta delta)))
          (t
           (error "Illegal value in `darkroom-margins'")))))

(defun darkroom--float-to-columns (f)
  (ceiling (* (let ((edges (window-edges)))
                (- (nth 2 edges) (nth 0 edges)))
              f)))

(defvar darkroom--margin-factor 1
  "Buffer local factor affecting `darkroom--set-margins'")

(defun darkroom--set-margins ()
  "Set darkroom margins for currently selected window"
  (let* ((window-configuration-change-hook nil)
         (window (selected-window))
         (margins (darkroom--compute-margins window)))
    ;; See description of
    ;; `fringes-outside-margins' for the reason
    ;; for this apparent noop
    (set-window-buffer window (current-buffer))
    (set-window-margins window
                        (round
                         (* darkroom--margin-factor
                            (car margins)))
                        (round
                         (* darkroom--margin-factor
                            (cdr margins))))))

(defun darkroom--reset-margins ()
  "Reset darkroom margins for currently selected window."
  (set-window-margins (selected-window) 0 0))

(defun darkroom-increase-margins (increment)
  "Increase darkroom margins by INCREMENT."
  (interactive (list darkroom-margin-increment))
  (set (make-local-variable 'darkroom--margin-factor)
       (* darkroom--margin-factor (+ 1 increment)))
  (mapc #'(lambda (w)
            (with-selected-window w
              (darkroom--set-margins)))
        (get-buffer-window-list (current-buffer))))

(defun darkroom-decrease-margins (decrement)
  "Decrease darkroom margins by DECREMENT."
  (interactive (list darkroom-margin-increment))
  (darkroom-increase-margins (- decrement)))

(defvar darkroom-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-M-+") 'darkroom-increase-margins)
    (define-key map (kbd "C-M--") 'darkroom-decrease-margins)
    map))

(defconst darkroom--saved-variables
  '(mode-line-format
    header-line-format
    fringes-outside-margins)
  "Variables saved in `darkroom--saved-state'")

(defvar darkroom--saved-state nil
  "Saved state before `darkroom-mode' is turned on.
Alist of (VARIABLE . BEFORE-VALUE)")

;; (defvar darkroom--saved-text-scale-mode-amount nil
;;   "Text scale before `darkroom-mode' is turned on.")

(defun darkroom--enter (&optional just-margins)
  "Save current state and enter darkroom for the current buffer.
With optional JUST-MARGINS, just set the margins."
  (unless just-margins
    (setq darkroom--saved-state
          (mapcar #'(lambda (sym)
                      (cons sym (buffer-local-value sym (current-buffer))))
                  darkroom--saved-variables))
    (setq mode-line-format nil
          header-line-format nil
          fringes-outside-margins darkroom-fringes-outside-margins)
    (text-scale-increase darkroom-text-scale-increase))
  (mapc #'(lambda (w)
            (with-selected-window w
              (darkroom--set-margins)))
        (get-buffer-window-list (current-buffer))))

(defun darkroom--leave ()
  "Undo the effects of `darkroom--enter'."
  (mapc #'(lambda (pair)
            (set (make-local-variable (car pair)) (cdr pair)))
        darkroom--saved-state)
  (setq darkroom--saved-state nil)
  (text-scale-mode -1)
  (mapc #'(lambda (w)
            (with-selected-window w
              (darkroom--reset-margins)))
        (get-buffer-window-list (current-buffer))))

(defun darkroom--enter-or-leave ()
  "Enter or leave darkroom according to window configuration."
  (cond ((= (count-windows) 1)
         (darkroom--enter darkroom--saved-state))
        (darkroom--saved-state
         (darkroom--leave))
        (t
         ;; for clarity, don't do anything
         )))

(declare-function darkroom-tentative-mode "darkroom" t)

;;;###autoload
(define-minor-mode darkroom-mode
  "Remove visual distractions and focus on writing. When this
mode is active, everything but the buffer's text is elided from
view. The buffer margins are set so that text is centered on
screen. Text size is increased (display engine allowing) by
`darkroom-text-scale-increase'." nil nil nil
  (when darkroom-tentative-mode
    (display-warning
     'darkroom
     (concat "Turning off `darkroom-tentative-mode' first. "
             "It doesn't go with `darkroom-mode'.")
     (let ((darkroom-mode nil))
       (darkroom-tentative-mode -1))))
  (cond (darkroom-mode
         (darkroom--enter)
         (add-hook 'window-configuration-change-hook 'darkroom--set-margins
                   t t))
        (t
         (darkroom--leave)
         (remove-hook 'window-configuration-change-hook 'darkroom--set-margins
                      t))))

;;;###autoload
(define-minor-mode darkroom-tentative-mode
  "Enters `darkroom-mode' when all other windows are deleted."
  nil " Room" darkroom-mode-map
  ;; always begin by removing the hook
  ;; 
  (remove-hook 'window-configuration-change-hook
               'darkroom--enter-or-leave 'local)
  (when darkroom-mode
    (display-warning
     'darkroom
     (concat "Turning off `darkroom-mode' first. "
             "It doesn't go with `darkroom-tentative-mode'.")
     (let ((darkroom-tentative-mode nil))
       (darkroom-mode -1))))
  ;; turn darkroom on or off according to window state
  ;; 
  (cond (darkroom-tentative-mode
         ;; re-add the hook when we are turning ourselves on
         ;;
         (add-hook 'window-configuration-change-hook
                   'darkroom--enter-or-leave 'append 'local)
         ;; call this right away if we're supposed to turn darkroom on
         ;; immediately.
         ;; 
         (darkroom--enter-or-leave))
        (t
         (darkroom--leave))))

;;;; ChangeLog:

;; 2020-05-07  João Távora  <joaotavora@gmail.com>
;; 
;; 	* darkroom.el (Version): Bump to 0.3
;; 
;; 2020-05-07  Ilya Ostapyshyn  <ilya.ostapyshyn@gmail.com>
;; 
;; 	Fix #13: correctly calculate search bound for narrowed buffers
;; 
;; 	The search-forward function does not take narrowing into account, so we
;; 	must  do that	 ourselves.
;; 	 Co-authored-by: João Távora <joaotavora@gmail.com> 
;; 	Copyright-paperwork-exempt: yes
;; 	
;; 	* darkroom.el (darkroom-guess-margins): Add (point-min) to the 20000
;; 	
;; 
;; 2019-03-15  João Távora  <joaotavora@gmail.com>
;; 
;; 	* darkroom.el (Version): Bump to 0.2
;; 
;; 2018-10-08  Levi Tan Ong  <levi.ong@gmail.com>
;; 
;; 	Close #10: deactivate text-scale-mode when leaving darkroom
;; 
;; 	Copyright-paperwork-exempt: yes
;; 	
;; 	* darkroom.el (darkroom--leave): Deactivate text-scale-mode.
;; 
;; 2015-11-03  João Távora  <joaotavora@gmail.com>
;; 
;; 	* darkroom.el (face-remap): Require it. Needed for `buffer-face-mode'.
;; 
;; 2015-04-23  João Távora  <joaotavora@gmail.com>
;; 
;; 	Improve README.md and add a screenshot
;; 
;; 2015-01-05  João Távora  <joaotavora@gmail.com>
;; 
;; 	Add autoload cookies
;; 
;; 	* darkroom.el (darkroom-mode, darkroom-tentative-mode): Add autoload
;; 	cookie.
;; 	(darkroom-tentative-mode): Use `declare-function` to try and shoosh
;; 	byte-compiler.
;; 
;; 2014-12-18  Joao Tavora	 <joaotavora@gmail.com>
;; 
;; 	Prepare for inclusion in GNU ELPA
;; 
;; 	Assign copyright to the Free Software Foundation and add Maintainer: 
;; 	header.
;; 
;; 2014-12-18  Joao Tavora	 <joaotavora@gmail.com>
;; 
;; 	Fix darkroom-tentative-mode when switching window's buffer
;; 
;; 	* darkroom.el (darkroom--enter-or-leave): Call `darkroom-enter' with
;; 	non-nil JUST-MARGINS.
;; 	(darkroom--enter): Add JUST-MARGINS.
;; 
;; 2014-12-16  João Távora  <joaotavora@gmail.com>
;; 
;; 	Fix margin calculation yet again.
;; 
;; 	For scaled char widths the margin width, in columns, also has to be 
;; 	scaled accordingly.
;; 
;; 	* darkroom.el (darkroom-verbose): New variable.
;; 	(darkroom--window-width): New function.
;; 	(darkroom-guess-margins): Use it.
;; 	(darkroom--reset-margins): Cleanup.
;; 
;; 2014-12-16  Syohei YOSHIDA  <syohex@gmail.com>
;; 
;; 	load cl-lib
;; 
;; 2014-12-15  João Távora  <joaotavora@gmail.com>
;; 
;; 	Fix automatic margin calculation
;; 
;; 	* darkroom.el (darkroom--real-window-width): Removed horrible hack.
;; 	(darkroom-guess-margins): Calculate with pixel widths.
;; 
;; 2014-12-15  João Távora  <joaotavora@gmail.com>
;; 
;; 	Fix `darkroom-tentative-mode'
;; 
;; 	* darkroom.el (darkroom--margin-factor): New variable.
;; 	(darkroom--set-margins): Consider `darkroom-margin-factor'.
;; 	(darkroom--reset-margins): Always reset margins to 0.
;; 	(darkroom-increase-margins): Implement with `darkroom--margin-factor'.
;; 	(darkroom--enter): Renamed from `darkroom--turn-on'. Don't afect hooks
;; 	here.
;; 	(darkroom--leave): Renamed from `darkroom--turn-off'.
;; 	(darkroom--enter-or-leave): New function.
;; 	(darkroom-mode): Use `darkroom--enter' and `darkroom--leave'. Set window
;; 	change hook here.
;; 	(darkroom--maybe-enable): Removed.
;; 	(darkroom-tentative-mode): Redesign.
;; 
;; 	* darkroom.el (darkroom--margin-factor): New variable.
;; 	(darkroom--set-margins):
;; 
;; 2014-12-12  João Távora  <joaotavora@gmail.com>
;; 
;; 	Redesign setting of margins, which now works per-window
;; 
;; 	`darkroom-tentative-mode' is now broken, but the rest now works better.
;; 
;; 	* darkroom.el (darkroom-margins): New semantics for function value.
;; 	(darkroom--real-window-width): Compensate for margins that might already
;; 	be there.
;; 	(darkroom--guess-margins-statistics-cache): New variable.
;; 	(darkroom-guess-margins): Use a cache.
;; 	(darkroom--compute-margins): Take WINDOW aprameter.
;; 	(darkroom--buffer-margins): Removed.
;; 	(darkroom--set-margins): Redesigned.
;; 	(darkroom--reset-margins): New function.
;; 	(darkroom-increase-margins): Unimplement.
;; 	(darkroom--saved-variables, darkroom--saved-state): New variables.
;; 	(darkroom--turn-on): Redesign.
;; 	(darkroom--turn-off): Redesign.
;; 	(darkroom--maybe-enable): Check for `darkroom--saved-state'.
;; 
;; 2014-12-11  João Távora  <joaotavora@gmail.com>
;; 
;; 	Attempt a clearer design of modes
;; 
;; 	* darkroom.el (darkroom--turn-on): New function.
;; 	(darkroom--tentative-mode-driving): Removed this.
;; 	(darkroom-mode): Use new `darkroom--turn-on' and
;; 	`darkroom--turn-off'.
;; 	(darkroom-tentative-mode): Assert that no `darkroom-mode' and
;; 	`darkroom-tentative-mode' are mixed.
;; 	(darkroom--turn-off): New function.
;; 
;; 2014-12-11  João Távora  <joaotavora@gmail.com>
;; 
;; 	Corrections after another review iteration with Rasmus
;; 
;; 	* darkroom.el (darkroom-margins): New default.
;; 	(darkroom-margins): Tweak docstring.
;; 	(darkroom-margins): Better type spec.
;; 	(darkroom-margins-if-failed-guess): New defcustom.
;; 	(darkroom--real-window-width): New function.
;; 	(darkroom-guess-margins): Simplified.
;; 	(darkroom--compute-margins)
;; 	(darkroom--saved-mode-line-format)
;; 	(darkroom--saved-header-line-format, darkroom--saved-margins): Add 
;; 	docstring.
;; 	(darkroom-mode): Added an assertion.
;; 	(darkroom--tentative-mode-driving): New variable.
;; 	(darkroom--maybe-enable): Use `darkroom--tentative-mode-driving'
;; 	(darkroom-mode): Attempt to ensure `darkroom--set-margins' always 
;; 	happens after `darkroom--maybe-enable' in
;; 	`window-configuration-change-hook'.
;; 
;; 2014-12-11  João Távora  <joaotavora@gmail.com>
;; 
;; 	Minor tweaks
;; 
;; 	* darkroom.el: Rewrite "Commentary" section
;; 	(darkroom-margins): Don't mention `darkroom--set-margins'.
;; 	(darkroom-guess-margins): Use `truncate', not `round'
;; 
;; 2014-12-09  João Távora  <joaotavora@gmail.com>
;; 
;; 	Prefix internal symbols with "darkroom--"
;; 
;; 	* darkroom.el (darkroom--compute-margins)
;; 	(darkroom--float-to-columns, darkroom-buffer-margins)
;; 	(darkroom--set-margins, darkroom--saved-mode-line-format)
;; 	(darkroom--saved-header-line-format, darkroom--saved-margins)
;; 	(darkroom-tentative-mode): Internal variables and functions now prefixed
;; 	"darkroom--".
;; 
;; 2014-12-09  João Távora  <joaotavora@gmail.com>
;; 
;; 	Add some docstrings
;; 
;; 	* darkroom.el:
;; 	(darkroom-increase-margins, darkroom-decrease-margins): Add docstring.
;; 
;; 2014-12-09  João Távora  <joaotavora@gmail.com>
;; 
;; 	Add (still non-functioning) `darkroom-compute-margins'
;; 
;; 	* darkroom.el: Require 'cl-lib
;; 	(darkroom-guess-margins): New function for putting in
;; 	`darkroom-margins'. But broken due to `window-width' not being suitable
;; 	probably.
;; 	(darkroom-compute-margins): Redesigned.
;; 	(darkroom-set-margins): Don't `darkroom-compute-margins'
;; 	(darkroom-mode): Reordered statements.
;; 
;; 2014-12-08  João Távora  <joaotavora@gmail.com>
;; 
;; 	Tidy up margin calculation
;; 
;; 	* darkroom.el (darkroom-compute-margins): Renamed from
;; 	`darkroom-margins'.
;; 	(darkroom-buffer-margins): New variable.
;; 	(darkroom-set-margins): Redesign. Set `darkroom-buffer-margins'.
;; 	(darkroom-increase-margins): Redesign.
;; 	(darkroom-mode-map): Fix whitespace.
;; 	(darkroom-mode): Use `set-mark-local-variable'
;; 	(darkroom-mode): Save and restore current margins.
;; 	(darkroom-tentative-mode): Fix whitespace.
;; 
;; 2014-12-08  João Távora  <joaotavora@gmail.com>
;; 
;; 	Integrate another comment from Rasmus
;; 
;; 	* darkroom.el (darkroom-margin-increment): New defcustom.
;; 	(darkroom-increase-margins): Take a parameter.
;; 	(darkroom-decrease-margins): Use `darkroom-increase-margins'
;; 
;; 2014-12-08  João Távora  <joaotavora@gmail.com>
;; 
;; 	Integrate some comments from Rasmus
;; 
;; 	See http://permalink.gmane.org/gmane.emacs.devel/179381 for the 
;; 	discussion.
;; 
;; 	* darkroom.el: Add file header.
;; 	(darkroom): Add customization group.
;; 	(darkroom-margins): Make it a `defcustom'.
;; 	(darkroom-turns-on-visual-line-mode): ditto.
;; 	(darkroom-mode): Improve docstring.
;; 	(darkroom-fill-paragraph-maybe): Removed.
;; 	(darkroom-visual-mode-maybe-enable): Removed.
;; 	(darkroom-mode): Improve docstring.
;; 	(darkroom-mode): Use `darkroom-text-scale-increase'
;; 	(darkroom-maybe-enable): Comment out debug code.
;; 	(darkroom-mode): Don't `darkroom-visual-mode-maybe-enable'
;; 	(darkroom-mode-map): Don't bind `darkroom-fill-paragraph-maybe'.
;; 	(darkroom-saved-visual-line-mode): Removed.
;; 	(darkroom-text-scale-increase): New defcustom.
;; 
;; 2014-02-27  Joao Tavora	 <joaotavora@gmail.com>
;; 
;; 	Add .gitignore
;; 
;; 2014-02-27  Joao Tavora	 <joaotavora@gmail.com>
;; 
;; 	Leave darkroom-mode when leaving tentative-mode
;; 
;; 	* darkroom.el (darkroom-tentative-mode): Leave minor mode as well when
;; 	leaving tentative-mode.
;; 
;; 2014-02-27  Joao Tavora	 <joaotavora@gmail.com>
;; 
;; 	Now works with multiple windows for same darkroom buffer
;; 
;; 	* darkroom.el (darkroom-set-margins): set for every window separately.
;; 	(darkroom-fill-paragraph-maybe): Be smarter we filling paragraph. TODO:
;; 	use remap.
;; 	(darkroom-saved-mode-line-format)
;; 	(darkroom-saved-header-line-format)
;; 	(darkroom-saved-visual-line-mode): new buffer-local vars.
;; 	(darkroom-visual-mode-maybe-enable): new function.
;; 	(darkroom-mode): Remove hack here.
;; 	(darkroom-maybe-enable): new function.
;; 	(darkroom-tentative-mode): New minor mode.
;; 
;; 2014-02-27  Joao Tavora	 <joaotavora@gmail.com>
;; 
;; 	darkroom-mode added
;; 
;; 2014-02-27  Joao Tavora	 <joaotavora@gmail.com>
;; 
;; 	first commit
;; 
;; 2012-12-25  João Távora  <joaotavora@gmail.com>
;; 
;; 	fix: save HEADER-LINE-FORMAT as well
;; 
;; 2012-12-25  João Távora  <joaotavora@gmail.com>
;; 
;; 	fix: DARKROOM-CONFIRM-FILL-PARAGRAPH -> DARKROOM-FILL-PARAGRAPH-MAYBE
;; 
;; 2012-08-30  João Távora  <joaotavora@gmail.com>
;; 
;; 	Initial commit
;; 



(provide 'darkroom)
;;; darkroom.el ends here
