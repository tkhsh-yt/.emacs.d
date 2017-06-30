(require 'req-package)
(require 'el-get)

(req-package org-mode
  :loader :el-get)

(req-package org-bullets
  :loader :el-get
  :require (org-mode))
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(provide 'init-org)
