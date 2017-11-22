(use-package company-mode
  :bind (:map company-mode-map
         ("C-i" . company-complete)
         :map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous)
         :map company-search-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :init
  (global-company-mode +1)
  :config
  (setq company-idle-delay 0.1
        company-selection-wrap-around t
        company-dabbrev-around t))
