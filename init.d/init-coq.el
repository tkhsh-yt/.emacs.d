(require 'req-package)
(require 'el-get)

(req-package proof-site
  :loader :el-get
  :require (smartrep)
  :config
  (smartrep-define-key coq-mode-map "C-c"
    '(("C-n" . proof-assert-next-command-interactive)
      ("C-u" . proof-undo-last-successful-command))))

(req-package company-coq
  :loader :el-get
  :config
  (add-hook 'coq-mode-hook #'company-coq-mode))

(provide 'init-coq)
