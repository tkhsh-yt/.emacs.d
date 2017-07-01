(require 'req-package)
(require 'el-get)

(req-package go-mode
  :loader :el-get
  :bind (:map go-mode-map
	      ("M-." . godef-jump)
	      ("M-," . pop-tag-mark))
  :init
  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-hook 'go-mode-hook '(lambda () (setq tab-width 2)))
  (setq gofmt-command "goimports"))

(req-package go-eldoc
  :loader :el-get
  :require (go-mode)
  :init
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(req-package company-go
  :loader :el-get
  :require (company go-mode))

(provide 'init-go)