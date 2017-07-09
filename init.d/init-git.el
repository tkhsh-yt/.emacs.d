(require 'req-package)
(require 'el-get)

(req-package magit
  :loader :el-get
  :require (init-keybinds)
  :bind (("M-m m s" . magit-status)))

(req-package git-timemachine)

(provide 'init-git)
