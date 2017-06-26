(global-auto-complete-mode -1)

(use-package company
  :init
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 2
	company-selection-wrap-around t)  
  :config
  (global-company-mode)
  (setq company-dabbrev-downcase nil)
  (bind-keys :map company-mode-map
	     ("C-i" . company-complete))
  (bind-keys :map company-active-map
             ("C-n" . company-select-next)
	     ("C-p" . company-select-previous)
	     ("C-s" . company-filter-candidates))
  (bind-keys :map company-search-map
	     ("C-n" . company-select-next)
	     ("C-p" . company-select-previous)))
