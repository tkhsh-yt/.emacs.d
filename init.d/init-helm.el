(require 'req-package)
(require 'el-get)

(req-package helm
  :loader :el-get
  :require migemo
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
  :config
  (require 'helm-config)
  (helm-mode 1)
  (helm-migemo-mode 1))

(req-package helm-swoop
  :loader :el-get
  :require helm)

(req-package helm-projectile
  :loader :el-get
  :require helm)

(req-package helm-descbinds
  :loader :el-get
  :require helm)

(req-package helm-company
  :loader :el-get
  :require helm)

(req-package  helm-make
  :loader :el-get
  :require (helm projectile))

(req-package helm-ag
  :loader :el-get
  :require helm)

(req-package helm-elscreen
  :loader :el-get
  :require helm)

(req-package helm-books
  :loader :el-get
  :require helm)

(provide 'init-helm)
