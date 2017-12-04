(use-package company-mode
  :diminish company-mode
  :bind (("C-M-i" . company-complete)
         :map company-mode-map
         ("TAB" . indent-for-tab-command)
         :map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous)
         ("C-s" . company-filter-candidates)
         :map company-search-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :init
  (global-company-mode +1)
  :config
  (setq company-idle-delay 0
        company-selection-wrap-around t
        company-dabbrev-around t))
