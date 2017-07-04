(require 'req-package)
(require 'el-get)

(req-package highlight-symbol
  :loader :el-get
  :init
  (setq highlight-symbol-idle-delay 0.5)
  (add-hook 'prog-mode-hook 'highlight-symbol-mode)
  (add-hook 'prog-mode-hook 'highlight-symbol-nav-mode))

(provide 'init-highlight-symbol)
