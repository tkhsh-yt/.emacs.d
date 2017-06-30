(use-package company
  :general
  (:keymaps 'company-mode-map
	    "C-i" 'company-complete
	    "TAB" 'company-indent-or-complete-common)
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
  (el-get-bundle company-mode)
  :config
  (global-company-mode +1))
