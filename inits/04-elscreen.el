(use-package elscreen
  :init
  (setq elscreen-tab-display-kill-screen nil)
  (setq elscreen-tab-display-control nil)
  (el-get-bundle elscreen)  
  :config
  (elscreen-start))
