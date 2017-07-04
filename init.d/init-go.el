(require 'req-package)
(require 'el-get)

(req-package company-go
  :loader :el-get
  :require (company go-mode)
  :init
  (add-hook 'go-mode (lambda ()
		       (set (make-local-variable 'company-backends) '(company-go)))))

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

(provide 'init-go)
