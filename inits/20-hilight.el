(use-package highlight-symbol
  :diminish highlight-symbol-mode
  :init
  (add-hook 'prog-mode-hook 'highlight-symbol-mode)
  (add-hook 'prog-mode-hook 'highlight-symbol-nav-mode)
  :config
  (setq highlight-symbol-idle-delay 0.5))

(use-package diff-hl
  :init
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
  (global-diff-hl-mode t))
