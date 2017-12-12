(use-package org-mode
  :defer t)

(use-package org-bullets
  :defer t
  :init
  (add-hook 'org-mode-hook '(lambda () (org-bullets-mode 1))))
