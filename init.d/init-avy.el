(require 'req-package)
(require 'el-get)

(req-package avy
  :loader :el-get
  :init
  :bind (("C-' l" . avy-goto-line)
	 ("C-' c" . avy-goto-char)))

(provide 'init-avy)
