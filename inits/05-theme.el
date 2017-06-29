(use-package dracula-theme
  :config
  (load-theme 'dracula t))

;; Theme for elscreen
(use-package elscreen
  :bind (("C-<tab>" . elscreen-next)
	 ("C-S-<tab>" . elscreen-previous))
  :config
  (copy-face 'mode-line 'elscreen-tab-current-screen-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-background-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-control-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-other-screen-face))
