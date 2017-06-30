(use-package avy
  :init
  (el-get-bundle avy)
  :bind (("C-' l" . avy-goto-line)
	 ("C-' c" . avy-goto-char)))
