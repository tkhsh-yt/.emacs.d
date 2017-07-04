(require 'req-package)
(require 'el-get)

(req-package goto-chg
  :bind (("C-." . goto-last-change)
	 ("C-," . goto-last-change-reverse)))

(provide 'init-goto-chg)
