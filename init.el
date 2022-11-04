;;在文件最开头添加地个 文件作用域的变量设置，设置变量的绑定方式
;; -*- lexical-binding: t -*-

(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
                         ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))
(package-initialize)


;;防止反复调用 package-refresh-contents 会影响加载速度
(when (not package-archive-contents)
  (package-refresh-contents))

;;modeline上显示我的所有的按键和执行的命令
(package-install 'keycast)
(keycast-mode t)


;;设置行号
(global-linum-mode 1)

;;关闭打开软件导航栏
(setq inhibit-startup-screen t)

;;激活注册表快捷方式
(server-mode 1)

;;打开icomplete补全功能
;;(setq tab-always-indent 'complete)
;;(icomplete-mode t)

;;打开括号不全
(electric-pair-mode t)

;;打开最大化
(toggle-frame-maximized)

;;关闭工具窗口
(tool-bar-mode -1)
;;关闭滑动按钮
(scroll-bar-mode -1)
;;设置光标风格和粗细
(setq cursor-type '(bar . 5))


;;快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;将函数open-init-file绑定到<F2>键上
(global-set-key (kbd "<f2>") 'open-init-file)

;;设置company插件补全
(global-company-mode 1)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;;增强 minibuffer 补全：vertico 和 Orderless
(package-install 'vertico)
(vertico-mode t)
;;模糊拼写补全
(package-install 'orderless)
(setq completion-styles '(orderless))

;;配置 Marginalia 增强 minubuffer 的 annotation
(package-install 'marginalia)
(marginalia-mode t)

;;minibuffer action 和自适应的 context menu：Embark
(package-install 'embark)


;;增强文件内搜索和跳转函数定义：Consult
(package-install 'consult)


;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160);;

;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;;高亮当前行
(global-hl-line-mode 1)

;;启动主题
;;(load-theme 'monokai 1)
(load-theme 'solarized-dark t)

;;开启Dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
;; Or if you use use-package
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;;Dashboard配置
;; Set the title
(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
;; Set the banner
(setq dashboard-startup-banner [VALUE])
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.gif", "path/to/your/image.png" or "path/to/your/text.txt" which displays whatever gif/image/text you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(neotree markdown-mode solarized-theme monokai-theme dashboard embark marginalia vertico orderless keycast company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
