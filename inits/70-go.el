(use-package go-mode
  :config
  (bind-keys :map go-mode-map
         ("M-." . godef-jump)
         ("M-," . pop-tag-mark))
  (add-hook 'go-mode-hook '(lambda () (setq tab-width 2)))
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save))

(use-package go-eldoc
  :config
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(use-package go-autocomplete)
