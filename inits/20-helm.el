(use-package helm-config
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-:" . helm-mini)
	 ("C-' y" . helm-show-kill-ring)
	 ("C-' g" . helm-do-grep-ag)
	 ("C-' s" . helm-swoop)
	 ("C-' S" . helm-multi-swoop-all))
  :config
  (helm-migemo-mode 1)
  (setq helm-mini-default-sources '(helm-source-buffers-list
				    helm-source-files-in-current-dir
				    helm-source-recentf)))
