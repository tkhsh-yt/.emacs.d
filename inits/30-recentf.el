(use-package recentf-ext
  :init
  (recentf-mode 1)
  :config
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10))
