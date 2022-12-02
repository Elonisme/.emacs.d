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

(provide 'init-keybindings)
