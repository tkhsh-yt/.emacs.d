(require 'req-package)
(require 'el-get)

(req-package elscreen
  :loader :el-get
  :require (smartrep)
  :init
  (setq elscreen-tab-display-kill-screen nil)
  (setq elscreen-tab-display-control nil)
  :config
  (elscreen-start)
  (smartrep-define-key global-map "C-z"
    '(("c" . elscreen-create)
      ("C" . elscreen-clone)
      ("n" . elscreen-next)
      ("p" . elscreen-previous)
      ("k" . elscreen-kill)
      ("K" . elscreen-kill-others)
      ("A" . elscreen-screen-nickname)
      ("'" . elscreen-goto))))

(provide 'init-elscreen)
