(use-package elscreen
   :bind (([(C-tab)] . elscreen-next)
	  ([(C-S-tab)] . elscreen-previous))
   :init
   (elscreen-start)
   :config  
   (setq elscreen-tab-display-kill-screen nil)
   (setq elscreen-tab-display-control nil))
