(use-package paredit
  :diminish paredit-mode
  :init
  (add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
  (add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
  (add-hook 'scheme-mode-hook 'enable-paredit-mode))
