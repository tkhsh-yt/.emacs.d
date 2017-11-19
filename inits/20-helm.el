(use-package helm-config
  :diminish (helm-mode)
  :bind (("M-x"  . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-h b" . helm-descbinds)
         ;; ("M-y" . helm-show-kill-ring)
         )
  :init
  (bind-key "C-c h" helm-command-prefix)
  (unbind-key "C-x c")
  (helm-mode 1)
  :config
  (bind-keys :map helm-map
             ("<tab>" . helm-execute-persistent-action)
             ("C-i" . helm-execute-persistent-action)
             ("C-z" . helm-select-action))
  (setq helm-M-x-fuzzy-match              t
        helm-split-window-in-side-p       t
        helm-move-to-line-cycle-in-source t))

