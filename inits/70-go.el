(use-package go-mode
  :bind (("M-." . godef-jump)
         ("M-," . pop-tag-mark))
  :init
  (add-hook 'go-mode-hook '(lambda ()
                             (setq default-tab-width 2)
                             (setq whitespace-style
                                   '(face
                                     trailing
                                     spaces
                                     space-mark
                                     tab-mark)))))

(use-package company-go
  :init
  (add-hook 'go-mode-hook 'company-mode)
  (add-hook 'go-mode-hook '(lambda ()
                             (set (make-local-variable 'company-backends) '(company-go)))))

(use-package go-eldoc
  :init
  (add-hook 'go-mode-hook 'go-eldoc-setup))
