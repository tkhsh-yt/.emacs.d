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
  :init
  (setq helm-M-x-fuzzy-match t)
  (setq helm-mini-default-sources '(helm-source-buffers-list
				    helm-source-files-in-current-dir
				    helm-source-recentf))
  (el-get-bundle helm)
  :config
  (helm-mode 1)
  (helm-migemo-mode 1))

(use-package helm-descbinds
  :config
  (helm-descbinds-mode 1))

(el-get-bundle helm-swoop)
(el-get-bundle helm-projectile)
(el-get-bundle helm-descbinds)
(el-get-bundle helm-company)
(el-get-bundle abo-abo/helm-make)
(el-get-bundle helm-ag)
(el-get-bundle emacs-helm/helm-elscreen)
