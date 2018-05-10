(use-package org-mode
  :defer t
  :config
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.65)))

(use-package org-bullets
  :defer t
  :init
  (add-hook 'org-mode-hook '(lambda () (org-bullets-mode 1))))
