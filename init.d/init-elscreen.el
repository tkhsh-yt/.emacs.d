(require 'req-package)
(require 'el-get)

(req-package elscreen
  :loader :el-get
  :init
  (setq elscreen-tab-display-kill-screen nil)
  (setq elscreen-tab-display-control nil)
  :config
  (elscreen-start))

(provide 'init-elscreen)
