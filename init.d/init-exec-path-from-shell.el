(require 'req-package)
(require 'el-get)

(req-package exec-path-from-shell
  :loader :el-get
  :init
  (exec-path-from-shell-initialize))

(provide 'init-exec-path-from-shell)
