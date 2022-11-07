;;在文件最开头添加地个 文件作用域的变量设置，设置变量的绑定方式
;; -*- lexical-binding: t -*-

(add-to-list 'load-path "~/.emacs.d/lisp/")


;;基础配置
(require 'init-base)

;;包管理
(require 'init-packages)

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
   '(lyrics-fetcher lyrics request-deferred consult restart-emacs mpv emms emms-bilibili flycheck latex-preview-pane latex-extra pdf-tools python-mode neotree markdown-mode solarized-theme monokai-theme dashboard embark marginalia vertico orderless keycast company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
