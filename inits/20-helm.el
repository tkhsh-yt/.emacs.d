(use-package helm-config
  :diminish (helm-mode helm-migemo-mode)
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-:" . helm-mini)
	 ("C-' y" . helm-show-kill-ring)
	 ("C-x C-g" . helm-do-grep-ag)
	 ("C-' s" . helm-swoop)
	 ("C-' S" . helm-multi-swoop-all)
	 ("C-' t" . helm-elscreen)
	 ("C-' c" . helm-make))
  :config
  (setq helm-M-x-fuzzy-match t)
  (helm-migemo-mode 1)
  (setq helm-mini-default-sources '(helm-source-buffers-list
				    helm-source-files-in-current-dir
				    helm-source-recentf)))

(use-package helm-descbinds
  :config
  (helm-descbinds-mode 1))
