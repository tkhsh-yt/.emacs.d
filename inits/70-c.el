(use-package c-mode
  :mode (("\\.h\\'" . c-mode)
	 ("\\.c\\'" . c-mode))
  :init
  (setq c-default-style "k&r")
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2))

(use-package c-eldoc
  :init
  (add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
  (add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode)
  :config
  (setq eldoc-idle-delay 0.2))

