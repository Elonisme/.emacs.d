;;在文件最开头添加地个 文件作用域的变量设置，设置变量的绑定方式
;; -*- lexical-binding: t -*-

(add-to-list 'load-path "~/.emacs.d/lisp/")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;基础配置
;;设置写文件为utf-8
(setq default-buffer-file-coding-system 'utf-8)

;;优先读文件为utf-8
(prefer-coding-system 'utf-8)

;;关闭打开软件导航栏
(setq inhibit-startup-screen t)

;;激活注册表快捷方式
(server-mode 1)

;;打开icomplete补全功能
;;(setq tab-always-indent 'complete)
;;(icomplete-mode t)

;;打开括号不全
(electric-pair-mode t)

;;括号比对
(show-paren-mode t)

;;快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;;打开最近的文件选项
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;;删除光标所在的单词
(delete-selection-mode 1)


(global-auto-revert-mode 1)

(setq auto-save-default nil)

(setq ring-bell-function 'ignore)

(fset 'yes-or-no-p 'y-or-n-p)

(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t ; Allow commands in minibuffers
	      history-length 1000
	      savehist-additional-variables '(mark-ring
					      global-mark-ring
					      search-ring
					      regexp-search-ring
					      extended-command-history)
	      savehist-autosave-interval 300)
  )

(use-package saveplace
  :ensure nil
  :hook (after-init . save-place-mode))

(use-package simple
  :ensure nil
  :hook (after-init . size-indication-mode)
  :init
  (progn
    (setq column-number-mode t)
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;包管理
(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
                         ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)


;;防止反复调用 package-refresh-contents 会影响加载速度
(when (not package-archive-contents)
  (package-refresh-contents))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; Setup `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;modeline上显示我的所有的按键和执行的命令
(use-package keycast
  :ensure t)

;;设置company插件补全
(global-company-mode 1)
(setq company-minimum-prefix-length 3);;最小触发补全的字母数字
(setq company-idle-delay 0)

;;增强 minibuffer 补全：vertico 和 Orderless
;;(use-package vertico
;;  :ensure t)
(use-package vertico)
(vertico-mode t)

;;模糊拼写补全
(use-package orderless
  :ensure t
  :config
  (setq completion-styles '(orderless))
  )

(use-package restart-emacs
  :ensure t)


;;配置 Marginalia 增强 minubuffer 的 annotation
(use-package marginalia)
(marginalia-mode t)
;;(use-package marginalia
;;  :ensure t)


;;minibuffer action 和自适应的 context menu：Embark
(use-package embark
  :ensure t
  :config
  (setq prefix-help-command 'embark-prefix-help-command)
  )


;;增强文件内搜索和跳转函数定义：Consult
(use-package consult)

;;org-roam配置
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

(add-to-list 'load-path "~/.emacs.d/elpa/ox-spectacle")
(require 'ox-spectacle)
(require 'org-re-reveal)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;界面配置
;;设置行号
(global-linum-mode 1)

;;打开最大化
(toggle-frame-maximized)

;;关闭工具窗口
(tool-bar-mode -1)

;;关闭滑动按钮
(scroll-bar-mode -1)

;;设置光标风格和粗细
(setq-default cursor-type '(bar . 5))

;;高亮当前行
(global-hl-line-mode 1)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160);;

;;启动主题
;;(load-theme 'monokai 1)
(load-theme 'solarized-dark t)

;;开启Dashboard
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;;Dashboard配置
;; Set the title
(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
;; Set the banner
(setq dashboard-startup-banner "~/.emacs.d/lisp/img/emacs.png")

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;快捷键配置
;;查找不同函数，变量以及快捷键所定义的文件位置
(global-set-key (kbd "C-h C-f") 'find-function);;find-function （ C-h C-f ）
(global-set-key (kbd "C-h C-v") 'find-variable);;find-variable （ C-h C-v ）
(global-set-key (kbd "C-h C-k") 'find-function-on-key);;find-function-on-key （ C-h C-k ）

;;将函数open-init-file绑定到<F2>键上
(global-set-key (kbd "<f2>") 'open-init-file)

;;显示补全后，在小窗口上下选择补全选项
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;;embark快捷键配置
(global-set-key (kbd "C-;") 'embark-act)

;;consult快捷键配置
(global-set-key (kbd "C-s") 'consult-line);;在文本内查找关键字
(global-set-key (kbd "C-x b") 'consult-buffer);;在buffer里面提供历史文件选项

;;重启emacs快捷键配置
(global-set-key (kbd "C-c C-p") 'restart-emacs)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;用户配置
(require 'init-custom)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(org-re-reveal ipython-shell-send keytar lsp-python-ms lsp-grammarly lsp-treemacs lsp-ui lsp-latex lsp-ltex lsp-mode simple-httpd websocket org-translate org-roam-bibtex org-roam pyim ssh cnfonts org-msg org-elp org-gtd org-context borg lyrics-fetcher lyrics request-deferred consult restart-emacs mpv emms emms-bilibili flycheck latex-preview-pane latex-extra pdf-tools python-mode neotree markdown-mode solarized-theme monokai-theme dashboard embark marginalia vertico orderless keycast company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
