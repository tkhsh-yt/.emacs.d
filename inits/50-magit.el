(use-package magit
  :bind (("C-x g" . magit-status)) ;; recommended by magit manual
  :config
  ;; magit-status をフルフレームで表示
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1))
