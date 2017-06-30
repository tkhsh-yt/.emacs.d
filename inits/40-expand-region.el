(use-package expand-region
  :init
  (el-get-bundle expand-region)
  :bind (("C-=" . er/expand-region)
	 ("C-M-=" . er/contract-region)))
