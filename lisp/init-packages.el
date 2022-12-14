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


(provide 'init-packages)
