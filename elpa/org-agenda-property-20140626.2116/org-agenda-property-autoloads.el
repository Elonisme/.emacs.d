;;; org-agenda-property-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-agenda-property" "org-agenda-property.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-agenda-property.el

(autoload 'org-agenda-property-add-properties "org-agenda-property" "\
Append locations to agenda view.
Uses `org-agenda-locations-column'." nil nil)

(eval-after-load 'org-agenda '(if (boundp 'org-agenda-finalize-hook) (add-hook 'org-agenda-finalize-hook 'org-agenda-property-add-properties) (add-hook 'org-finalize-agenda-hook 'org-agenda-property-add-properties)))

(if (boundp 'org-agenda-finalize-hook) (add-hook 'org-agenda-finalize-hook 'org-agenda-property-add-properties) (when (boundp 'org-finalize-agenda-hook) (add-hook 'org-finalize-agenda-hook 'org-agenda-property-add-properties)))

(register-definition-prefixes "org-agenda-property" '("org-agenda-property-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-agenda-property-autoloads.el ends here
