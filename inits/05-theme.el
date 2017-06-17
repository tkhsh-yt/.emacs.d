(load-theme 'dracula t)

;; Theme for elscreen
(use-package elscreen
  :config
  (copy-face 'mode-line 'elscreen-tab-current-screen-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-background-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-control-face)
  (copy-face 'mode-line-inactive 'elscreen-tab-other-screen-face))
