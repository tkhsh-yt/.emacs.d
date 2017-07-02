(require 'req-package)
(require 'el-get)
(require 'general)

(req-package company
  :loader :el-get
  :general
  (:keymaps 'company-mode-map	    
	    "TAB" 'indent-for-tab-command
	    "C-i" 'company-complete)
  (:keymaps 'company-active-map
	    "C-n" 'company-select-next
	    "C-p" 'company-select-previous
	    "C-s" 'company-filter-candidates)
  (:keymaps 'company-search-map
	    "C-n" 'company-select-next
	    "C-p" 'company-select-previous)
  :init
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 2
	company-selection-wrap-around t)
  (setq company-dabbrev-downcase nil)
  :config
  (global-company-mode +1))

(provide 'init-completion)
