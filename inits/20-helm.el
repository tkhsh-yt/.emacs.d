(use-package helm-config
  :diminish (helm-mode)
  :bind (("M-x"     . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("M-y"     . helm-show-kill-ring)
         ("C-x b"   . helm-mini)
         ("C-c h o" . helm-occur)
         ("C-h SPC" . helm-all-mark-rings)
         ("C-c C-g" . helm-ghq)
         :map helm-map
         ("<tab>" . helm-execute-persistent-action)
         ("C-i"   . helm-execute-persistent-action)
         ("C-z"   . helm-select-action))
  :init
  (bind-key "C-c h" helm-command-prefix)
  (unbind-key "C-x c")
  (helm-mode 1)
  (helm-descbinds-install)
  :config
  (setq helm-M-x-fuzzy-match t))

(use-package helm-ag
  :bind (("C-c h g" . helm-ag))
  :config
  (custom-set-variables
   '(helm-ag-base-command "rg --vimgrep --no-heading")))

(use-package helm-swoop
  :bind (("M-i"     . helm-swoop)
         ("M-I"     . helm-swoop-back-to-last-point)
         ("C-c M-i" . helm-multi-swoop)
         ("C-x M-i" . helm-multi-swoop-all)
         :map isearch-mode-map
         ("M-i" . helm-swoop-from-isearch)
         :map helm-swoop-map
         ("M-i" . helm-multi-swoop-all-from-helm-swoop)
         ("C-r" . helm-previous-line)
         ("C-s" . helm-next-line)
         :map helm-multi-swoop-map
         ("C-r" . helm-previous-line)
         ("C-s" . helm-next-line))
  :init
  ;; swoop
  (setq helm-multi-swoop-edit-save t)
  (setq helm-swoop-speed-or-color nil)
  (setq helm-swoop-move-to-line-cycle t))
