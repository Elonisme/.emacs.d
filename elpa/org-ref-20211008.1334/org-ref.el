;;; org-ref.el --- citations, cross-references and bibliographies in org-mode

;; Copyright(C) 2014-2016 John Kitchin

;; Author: John Kitchin <jkitchin@andrew.cmu.edu>
;; URL: https://github.com/jkitchin/org-ref
;; Version: 1.1.1
;; Keywords: org-mode, cite, ref, label
;; Package-Requires: ((dash "2.11.0") (htmlize "1.51") (helm "1.5.5") (helm-bibtex "2.0.0") (ivy "0.8.0") (hydra "0.13.2") (key-chord "0") (s "1.10.0") (f "0.18.0")  (pdf-tools "0.7") (bibtex-completion "0"))
;; This file is not currently part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program ; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:
;;
;; Lisp code to setup bibliography, cite, ref and label org-mode links.
;; Also sets up reftex and helm for org-mode citations.  The links are
;; clickable and do things that are useful.
;;
;; The default setup uses helm-bibtex.

;; You should really read org-ref.org in this package for details.
;;

;;; Code:
(require 'org-ref-core)
(require org-ref-completion-library)


(when (boundp 'org-ref-default-bibliography)
  (display-warning :warning  "Warning: You are using deprecated variables in org-ref that will be removed in version 3.

The following variables will not be used in version 3:
- org-ref-bibliography-notes
- org-ref-default-bibliography
- org-ref-pdf-directory 

They are replaced by these variables in `bibtex-completion':
- bibtex-completion-notes-path
- bibtex-completion-bibliography
- bibtex-completion-library-path

There are some other changes that are likely to break existing workflows, for example all non-LaTeX exports will be handled by CSL, and all the old export code has been removed.

For more details see https://github.com/jkitchin/org-ref/tree/org-ref-3#readme.

The release date for org-ref version 3 is planned for [2021-10-18 Mon]."))

;;* The end
(provide 'org-ref)

;;; org-ref.el ends here
