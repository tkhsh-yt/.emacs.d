(use-package cc-mode
  :defer t
  :mode (("\\.h\\'" . c++-mode)
	 ("\\.c\\'" . c++-mode))
  :config
  (setq c-default-style "k&r")
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2)
  (global-auto-complete-mode -1))
