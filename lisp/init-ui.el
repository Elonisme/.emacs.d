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

(provide 'init-ui)
