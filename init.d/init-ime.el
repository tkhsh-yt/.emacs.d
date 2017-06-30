(require 'req-package)
(require 'el-get)

(req-package ddskk
  :loader :el-get
  :bind (("C-x j" . skk-mode))
  :init
  (setq skk-isearch-start-mode 'latin)
  (setq-default skk-kutouten-type 'en)
  (setq skk-dcomp-active t))

(provide 'init-ime)
