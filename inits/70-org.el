(use-package org-bullets
  :init
  (el-get-bundle org-bullets)
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
