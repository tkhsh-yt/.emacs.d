(use-package ddskk
  :bind (("C-x j" . skk-mode))
  :init
  (setq skk-isearch-start-mode 'latin)
  (setq-default skk-kutouten-type 'en)
  (setq skk-dcomp-active t))

