(use-package easy-hugo)

(let ((conf-file (concat user-emacs-directory "hugo-conf.el")))
  (when (file-exists-p conf-file)
    (load-file conf-file)))
