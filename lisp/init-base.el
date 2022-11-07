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

(provide 'init-base)
