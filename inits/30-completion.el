(global-auto-complete-mode -1)

(use-package company
  :config
  (global-company-mode +1)
  (setq company-idle-delay 0)
  (bind-keys :map company-active-map
             ("C-n" . company-select-next)
	     ("C-p" . company-select-previous)
	     ("C-s" . company-filter-candidates)
	     ("C-i" . company-complete-selection)
	     :map company-search-map
	     ("C-n" . company-select-next)
	     ("C-p" . company-select-previous)))
