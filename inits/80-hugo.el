(use-package easy-hugo
  :init
  (setq easy-hugo-helm-ag t)
  :config
  (let ((conf-file (concat user-emacs-directory "hugo-conf.el")))
  (when (file-exists-p conf-file)
    (load-file conf-file))))
