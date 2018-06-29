(use-package skk-autoloads
  :bind (("C-x j" . skk-mode))
  :init
  (add-hook 'isearch-mode-hook 'skk-isearch-mode-setup)
  (add-hook 'isearch-mode-end-hook 'skk-isearch-mode-cleanup)
  :config
  (setq skk-isearch-start-mode     'latin
        skk-byte-compile-init-file t
        skk-kutouten-type          'en
        skk-henkan-strict-okuri-precedence t)
  (setq skk-server-host            "localhost"
        skk-server-portnum         1178
        skk-server-report-response t))
