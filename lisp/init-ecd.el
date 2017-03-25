;;将ECB的路径添加到读取列表中
(add-to-list 'load-path "/home/yu/.emacs.d/elpa/ecb-master")
;;告诉emacs启用ecb
(require 'ecb)
;;不显示每日提醒
(setq ecb-tip-of-the-day nil)
(provide 'init-ecd)
