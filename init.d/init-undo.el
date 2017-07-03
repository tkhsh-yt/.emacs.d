(require 'req-package)
(require 'el-get)

(req-package undohist
  :loader :el-get
  :config
  (undohist-initialize))

(req-package undo-tree
  :loader :el-get
  :diminish undo-tree-mode
  :config
  (global-undo-tree-mode))

(req-package redo+
  :loader :el-get
  :bind (("C-M-/" . redo))
  :init
  (setq undo-no-redo t))

(provide 'init-undo)
