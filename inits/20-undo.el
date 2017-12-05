(use-package undohist
  :config
  (undohist-initialize))

(use-package undo-tree
  :diminish (undo-tree-mode)
  :bind (("C-x u" . undo-tree-redo))
  :config
  (global-undo-tree-mode t))

(use-package redo+
  :bind (("C-M-/" . redo))
  :config
  (setq undo-no-redo t))

(use-package point-undo
  :bind (("M-[" . point-undo)
         ("M-]" . point-redo)))
