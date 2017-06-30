(use-package projectile
  :bind (("C-' p g" . helm-projectile-ag)
	 ("C-' p p" . helm-projectile)
	 ("C-' p s" . helm-multi-swoop-projectile)
	 ("C-' p f" . helm-projectile-find-file))
  :init
  (setq projectile-completion-system 'helm)
  (el-get-bundle projectile
    :depends (helm-ag))
  :config
  (projectile-global-mode)  
  (helm-projectile-on))
