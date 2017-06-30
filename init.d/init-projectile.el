(require 'req-package)
(require 'el-get)

(req-package projectile
  :loader :el-get
  :require (helm helm-ag)
  :bind (("C-' p g" . helm-projectile-ag)
	 ("C-' p p" . helm-projectile)
	 ("C-' p s" . helm-multi-swoop-projectile)
	 ("C-' p f" . helm-projectile-find-file))
  :init
  (setq projectile-completion-system 'helm)
  :config
  (projectile-global-mode)  
  (helm-projectile-on))

(provide 'init-projectile)
