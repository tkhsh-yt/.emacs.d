(require 'req-package)
(require 'el-get)

(req-package magit
  :loader :el-get
  :bind (("C-' m" . magit-status)))

(req-package git-timemachine)

(provide 'init-git)
