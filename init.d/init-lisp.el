(require 'req-package)
(require 'el-get)

(req-package paredit
  :loader :el-get
  :init
  (add-hook 'emacs-lisp-mode-hook 'paredit-mode)
  (add-hook 'lisp-interaction-mode 'paredit-mode))

(provide 'init-lisp)
