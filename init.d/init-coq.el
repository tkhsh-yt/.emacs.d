(require 'req-package)
(require 'el-get)

(req-package proof-general
  :loader :el-get)

(req-package company-coq
  :loader :el-get
  :config
  (add-hook 'coq-mode-hook #'company-coq-mode))

(provide 'init-coq)
