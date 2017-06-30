(require 'req-package)
(require 'el-get)

(req-package migemo
  :loader :el-get
  :init
  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs"))

  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  (when (eq system-type 'gnu/linux)
    (setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict"))
  (when (equal system-type 'darwin)
    (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict"))
  :config
  (migemo-init))

(provide 'init-migemo)
