;;; xtended-faces.el --- More standard faces -*- lexical-binding: t -*-

;; Author: Will Dey
;; Maintainer: Will Dey
;; Version: 1.0.0
;; Package-Requires: ()
;; Homepage: https://github.com/wi11dey/xtended-faces
;; Keywords: keywords

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;; Generate README:
;;; Commentary:

;; commentary

;;; Code:

(custom-declare-theme 'xtended-faces
		      'xtended-faces
		      "Extended faces for Emacs.")

(defface prose
  '((t :inherit variable-pitch))
  "")

(defface title
  '((t :inherit (bold variable-pitch)))
  "")

(defface heading-1
  '((t :inherit variable-pitch))
  "")

(defface heading-2
  '((t :height 0.95
       :inherit heading-1))
  "")

(defface heading-3
  '((t :height 0.95
       :inherit heading-2))
  "")

(defface heading-4
  '((t :height 0.9
       :inherit heading-3))
  "")

(defface heading-5
  '((t :inherit heading-4))
  "")

(defface heading-6
  '((t :inherit heading-5))
  "")

(defface heading-7
  '((t :inherit heading-6))
  "")

(defface heading-8
  '((t :inherit heading-7))
  "")

(defface embedded-code
  '((t :inherit (fixed-pitch highlight)))
  "")

(defface keyboard
  '((t))
  "")

(defface keyboard-pressed
  '((t :inherit keyboard))
  "")

;;; Info
;;;; Code
(custom-theme-set-faces
 'xtended-faces
 '(Info-quoted ((t :inherit embedded-code))))
;;;; Headings
(custom-theme-set-faces
 'xtended-faces
 '(info-title-1 ((t :inherit heading-1)))
 '(info-title-2 ((t :inherit heading-2)))
 '(info-title-3 ((t :inherit heading-3)))
 '(info-title-4 ((t :inherit heading-4))))

;;; Org
;;;; Code
(custom-theme-set-faces
 'xtended-faces
 '(org-code ((t :inherit embedded-code))))
;;;; Headings
(custom-theme-set-faces
 'xtended-faces
 '(org-level-1 ((t :inherit heading-1)))
 '(org-level-2 ((t :inherit heading-2)))
 '(org-level-3 ((t :inherit heading-3)))
 '(org-level-4 ((t :inherit heading-4)))
 '(org-level-5 ((t :inherit heading-5)))
 '(org-level-6 ((t :inherit heading-6)))
 '(org-level-7 ((t :inherit heading-7)))
 '(org-level-8 ((t :inherit heading-8)))
 '(org-document-title ((t :foreground nil :inherit title))))

;;; Outline
(custom-theme-set-faces
 'xtended-faces
 '(outline-1 ((t :foreground nil :inherit heading-1)))
 '(outline-2 ((t :foreground nil :inherit heading-2)))
 '(outline-3 ((t :foreground nil :inherit heading-3)))
 '(outline-4 ((t :foreground nil :inherit heading-4)))
 '(outline-5 ((t :foreground nil :inherit heading-5)))
 '(outline-6 ((t :foreground nil :inherit heading-6)))
 '(outline-7 ((t :foreground nil :inherit heading-7)))
 '(outline-8 ((t :foreground nil :inherit heading-8))))

;;; Help mode
(custom-theme-set-faces
 'xtended-faces
 '(help-argument-name ((t :inherit embedded-code))))

(provide-theme 'xtended-faces)
(enable-theme 'xtended-faces)


;;; Prose mode
(autoload 'buffer-face-mode-invoke "face-remap")
;;;###autoload
(defun prose-mode (&optional arg)
  ""
  (interactive (list (or current-prefix-arg 'toggle)))
  (buffer-face-mode-invoke 'prose arg
                           (called-interactively-p 'interactive)))


;;; Fixed pitch mode
;;;###autoload
(defun fixed-pitch-mode (&optional arg)
  ""
  (interactive (list (or current-prefix-arg 'toggle)))
  (buffer-face-mode-invoke 'fixed-pitch arg
                           (called-interactively-p 'interactive)))

(provide 'xtended-faces)

;;; xtended-faces.el ends here
