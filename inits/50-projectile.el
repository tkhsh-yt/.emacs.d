(use-package projectile
  :bind (("C-' p g" . helm-projectile-ag)
	 ("C-' p p" . helm-projectile)
	 ("C-' p s" . helm-multi-swoop-projectile)
	 ("C-' p f" . helm-projectile-find-file))
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on))
