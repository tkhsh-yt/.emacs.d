(use-package hs-minor-mode
  :bind (("C-\\" . hs-toggle-hiding))
  :init
  (add-hook 'scheme-mode-hook '(lambda () (hs-minor-mode 1))))
