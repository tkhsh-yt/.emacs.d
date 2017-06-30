(use-package magit
  :bind (("C-' m" . magit-status))
  :init
  (el-get-bundle magit))

(use-package diff-hl
  :init
  (el-get-bundle diff-hl)
  :config
  (global-diff-hl-mode))
