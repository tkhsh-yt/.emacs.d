(require 'req-package)
(require 'el-get)

(req-package easy-kill
  :loader :el-get
  :bind (("M-w" . easy-kill)))

(provide 'init-easy-kill)
