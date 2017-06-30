(require 'req-package)
(require 'el-get)

(req-package quickrun
  :loader :el-get
  :bind (("C-' r" . quickrun)))

(provide 'init-quickrun)
