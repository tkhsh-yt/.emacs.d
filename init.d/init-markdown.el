(require 'req-package)
(require 'el-get)

(req-package markdown-mode
  :loader :el-get
  :mode ("\\.md\\'" . markdown-mode))

(provide 'init-markdown-mode)
