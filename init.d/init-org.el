(require 'req-package)
(require 'el-get)

(req-package org
  :loader :el-get)

(req-package org-bullets
  :loader :el-get
  :require (org))
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(provide 'init-org)
