(require 'req-package)
(require 'el-get)

(req-package magit
  :loader :el-get
  :require (init-keybinds)
  :bind (("C-q m" . magit-status)))

(req-package git-timemachine)

(provide 'init-git)
