(require 'req-package)
(require 'el-get)

(req-package c-mode
  :loader :build-in
  :mode (("\\.h\\'" . c-mode)
	 ("\\.c\\'" . c-mode))
  :init
  (setq c-default-style "k&r")
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2))

(req-package c-eldoc
  :loader :el-get
  :require (c-mode)
  :init
  (add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
  (add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode)
  :config
  (setq eldoc-idle-delay 0.2))

(provide 'init-c)
