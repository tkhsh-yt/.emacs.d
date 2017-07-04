(require 'req-package)
(require 'el-get)

(req-package company-c-headers
  :loader :el-get
  :require (company)
  :init
  (add-to-list 'company-backends 'company-c-headers))

(req-package c++-mode
  :loader :build-in
  :mode (("\\.h\\'" . c++-mode)
	 ("\\.c\\'" . c++-mode))
  :init
  (setq c-default-style "k&r")
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2))

;; (req-package c-eldoc
;;   :loader :el-get
;;   :init
;;   (add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode)
;;   :config
;;   (setq eldoc-idle-delay 0.2))

(provide 'init-c)
