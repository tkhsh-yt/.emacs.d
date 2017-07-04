(require 'req-package)
(require 'el-get)

(req-package neotree
  :loader :el-get
  :require (all-the-icons)
  :bind (([f8] . neotree-toggle))
  :init
  (setq neo-create-file-auto-open t)
  (setq neo-persist-show t)
  (setq neo-show-hidden-files t)
  (setq neo-keymap-style 'concise)
  (setq neo-smart-open t)
  (setq neo-vc-integration '(face char))
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :config
  (when neo-persist-show
    (add-hook 'popwin:before-popup-hook
	      (lambda () (setq neo-persist-show nil)))
    (add-hook 'popwin:after-popup-hook
	      (lambda () (setq neo-persist-show t)))))

(provide 'init-neotree)
