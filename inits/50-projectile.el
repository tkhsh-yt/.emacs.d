(use-package projectile
  :diminish projectile-mode
  :defer t
  :init
  (projectile-global-mode t)
  :config
  (custom-set-variables
   '(projectile-enable-caching t)))

(use-package helm-projectile
  :init
  (helm-projectile-on))
