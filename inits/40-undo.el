(use-package undohist
  :init
  (el-get-bundle undohist)
  :config
  (undohist-initialize))

(use-package undo-tree
  :init
  (el-get-bundle undo-tree)
  :config
  (global-undo-tree-mode))

(use-package redo+
  :bind (("C-M-/" . redo))
  :config
  (setq undo-no-redo t))
