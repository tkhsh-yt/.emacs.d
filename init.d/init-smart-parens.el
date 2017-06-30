(require 'req-package)
(require 'el-get)

(req-package smartparens
  :loader :el-get
  :config
  (require 'smartparens-config))

(provide 'init-smartparens)
