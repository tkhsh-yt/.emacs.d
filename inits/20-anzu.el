(use-package anzu
  :diminish anzu-mode
  :init
  (setq anzu-replace-threshold 1000)
  (setq anzu-search-threshold 1000)
  (el-get-bundle anzu)
  :config
  (global-anzu-mode +1)
  (global-set-key [remap query-replace] 'anzu-query-replace)
  (global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
  (copy-face 'mode-line 'anzu-mode-line)) 
