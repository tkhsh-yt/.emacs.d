(use-package elscreen
  :bind (("<C-tab>"         . elscreen-next)
         ("<C-iso-lefttab>" . elscreen-previous))
  :init
  (elscreen-start)
  :config
  (setq elscreen-tab-display-kill-screen nil)
  (setq elscreen-tab-display-control nil)
  ;; color
  (copy-face 'mode-line          'elscreen-tab-current-screen-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-background-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-control-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-other-screen-face))
