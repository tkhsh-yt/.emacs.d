(use-package go-mode
  :defer t
  :bind (:map go-mode-map
         ("M-." . godef-jump)
         ("M-," . pop-tag-mark))
  :init
  (add-hook 'go-mode-hook '(lambda ()
                             (setq default-tab-width 2)
                             (add-hook 'before-save-hook 'gofmt-before-save)
                             (setq whitespace-style
                                   '(face
                                     trailing
                                     spaces
                                     space-mark
                                     tab-mark)))))

(use-package company-go
  :defert t
  :init
  (add-hook 'go-mode-hook 'company-mode)
  (add-hook 'go-mode-hook '(lambda ()
                             (set (make-local-variable 'company-backends) '(company-go)))))

(use-package go-eldoc
  :defert t
  :init
  (add-hook 'go-mode-hook 'go-eldoc-setup))
