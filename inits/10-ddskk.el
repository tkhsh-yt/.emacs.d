(use-package ddskk
  :bind (("C-x j" . skk-mode))
  :init
  (add-hook 'isearch-mode-hook 'skk-isearch-mode-setup)
  (add-hook 'isearch-mode-end-hook 'skk-isearch-mode-cleanup)
  :config
  (setq skk-isearch-start-mode 'latin)
  (setq skk-byte-compile-init-file t)
  (setq skk-kutouten-type 'en)
  (setq skk-show-candidates-always-pop-to-buffer t))

