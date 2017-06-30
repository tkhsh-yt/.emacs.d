(use-package go-mode
  :init
  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-hook 'go-mode-hook '(lambda () (setq tab-width 2)))
  (setq gofmt-command "goimports")
  (el-get-bundle go-mode)
  :config
  (bind-keys :map go-mode-map
         ("M-." . godef-jump)
         ("M-," . pop-tag-mark)))

(use-package go-eldoc
  :init
  (add-hook 'go-mode-hook 'go-eldoc-setup)
  (el-get-bundle go-eldoc))

(use-package company-go
  :init
  (el-get-bundle company-go
    :url "https://raw.githubusercontent.com/nsf/gocode/master/emacs-company/company-go.el"
    :depends (company-mode go-mode)))
