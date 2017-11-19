(use-package helm-config
  :diminish (helm-mode)
  :bind (("M-x"     . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("M-y"     . helm-show-kill-ring)
         ("C-x b"   . helm-mini)
         ("C-c h o" . helm-occur)
         ("C-h SPC" . helm-all-mark-rings))
  :init
  (bind-key "C-c h" helm-command-prefix)
  (unbind-key "C-x c")
  (helm-mode 1)
  (helm-descbinds-install)
  :config
  (bind-keys :map helm-map
             ("<tab>" . helm-execute-persistent-action)
             ("C-i"   . helm-execute-persistent-action)
             ("C-z"   . helm-select-action))
  (setq helm-M-x-fuzzy-match t))
