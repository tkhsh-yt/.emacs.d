(provide 'req-package)
(provide 'el-get)

(req-package expand-region
  :loader :el-get
  :init
  :bind (("C-=" . er/expand-region)
	 ("C-M-=" . er/contract-region)))

(provide 'init-expand-region)
