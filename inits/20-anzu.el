(use-package anzu
  :diminish anzu-mode
  :init
  (global-anzu-mode +1)
  :config
  (global-set-key [remap query-replace] 'anzu-query-replace)
  (global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
  (setq anzu-replace-threshold 1000)
  (setq anzu-search-threshold 1000)
  (copy-face 'mode-line 'anzu-mode-line)) 
