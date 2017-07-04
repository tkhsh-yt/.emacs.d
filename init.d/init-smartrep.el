(require 'req-package)
(require 'el-get)

(req-package smartrep
  :loader :el-get
  :config
  (declare-function smartrep-define-key "smartrep")
  (advice-add 'smartrep-map-internal
	      :around (lambda (orig-fun &rest args)
			(let ((echo-keystrokes 0))
			  (apply orig-fun args)))))

(provide 'init-smartrep)
