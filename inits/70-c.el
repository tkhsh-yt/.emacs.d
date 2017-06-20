(use-package cc-mode
  :mode (("\\.h\\'" . c++-mode))
  :config
  (setq c-default-style "k&r")
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2))

(use-package auto-complete-c-headers
  :config
  (add-hook 'c++-mode-hook '(setq ac-sources (append ac-sources '(ac-source-c-headers))))
  (add-hook 'c-mode-hook '(setq ac-sources (append ac-sources '(ac-source-c-headers)))))

