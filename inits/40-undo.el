(use-package undohist
  :config
  (undohist-initialize))

(use-package undo-tree
  :config
  (global-undo-tree-mode))

(use-package redo+
  :bind (("C-M-/" . redo))
  :config
  (setq undo-no-redo t))
