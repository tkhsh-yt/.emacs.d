(use-package highlight-symbol
  :init
  (add-hook 'prog-mode-hook 'highlight-symbol-mode)
  (add-hook 'prog-mode-hook 'highlight-symbol-nav-mode)
  :config
  (setq highlight-symbol-idle-delay 0.5))
