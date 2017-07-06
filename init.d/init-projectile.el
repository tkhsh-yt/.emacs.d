(require 'req-package)
(require 'el-get)

(req-package projectile
  :loader :el-get
  :require (helm helm-ag)
  :diminish projectile-mode
  :init
  (setq projectile-completion-system 'helm)
  :config
  (projectile-global-mode)  
  (helm-projectile-on))

(provide 'init-projectile)
