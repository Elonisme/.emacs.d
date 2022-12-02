;;在文件最开头添加地个 文件作用域的变量设置，设置变量的绑定方式
;; -*- lexical-binding: t -*-

(add-to-list 'load-path "~/.emacs.d/lisp/")


;;基础配置
(require 'init-base)


;;包管理
(require 'init-packages)
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/.emacs.d/elpa/org-roam-20211017.1113"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  ;; If you're using a vertical completion framework, you might want a more informative completion interface
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))

(setq org-roam-v2-ack t)

(add-to-list 'load-path "~/.emacs.d/elpa/org-roam-ui")
(require 'org-roam-ui)

;;界面配置
(require 'init-ui)

;;快捷键配置
(require 'init-keybindings)

;;用户配置
(require 'init-custom)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(simple-httpd websocket org-translate org-roam-bibtex org-roam pyim ssh cnfonts org-msg org-elp org-gtd org-context borg lyrics-fetcher lyrics request-deferred consult restart-emacs mpv emms emms-bilibili flycheck latex-preview-pane latex-extra pdf-tools python-mode neotree markdown-mode solarized-theme monokai-theme dashboard embark marginalia vertico orderless keycast company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
