(require 'req-package)
(require 'el-get)

(req-package org
  :loader :el-get
  :require (smartrep)
  :config
  (smartrep-define-key org-mode-map "C-c"
    '(("C-n" . org-next-visible-heading)
      ("C-p" . org-previous-visible-heading)
      ("C-u" . outline-up-heading)
      ("C-f" . org-forward-heading-same-level)
      ("C-b" . org-backward-heading-same-level))))

(req-package org-bullets
  :loader :el-get
  :require (org))
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(provide 'init-org)
