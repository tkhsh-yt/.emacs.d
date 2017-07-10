(require 'req-package)
(require 'el-get)

(req-package smartrep
  :loader :el-get
  :config
  (declare-function smartrep-define-key "smartrep")
  (smartrep-define-key global-map "C-x"
    '(("o" . other-window)
      ("0" . delete-window)
      ("1" . delete-other-windows)
      ("2" . split-window-below)
      ("3" . split-window-right)
      ("{" . shrink-window-horizontally)
      ("}" . enlarge-window-horizontally)
      ("+" . balance-windows)
      ("^" . enlarge-window)
      ("-" . shrink-window)))
  (advice-add 'smartrep-map-internal
	      :around (lambda (orig-fun &rest args)
			(let ((echo-keystrokes 0))
			  (apply orig-fun args)))))

(provide 'init-smartrep)
