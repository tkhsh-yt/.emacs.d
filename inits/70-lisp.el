(use-package lispy
  :diminish lispy-mode
  :defer t
  :init
  (add-hook 'emacs-lisp-mode-hook '(lambda () (lispy-mode 1)))
  (add-hook 'lisp-mode-hook '(lambda () (lispy-mode 1)))
  (add-hook 'scheme-mode-hook '(lambda () (lispy-mode 1))))
