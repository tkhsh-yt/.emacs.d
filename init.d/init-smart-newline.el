(require 'req-package)
(require 'el-get)

(req-package smart-newline
  :loader :el-get
  :bind (("RET" . smart-newline)))

(provide 'init-smart-newline)
