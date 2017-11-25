(use-package smartparens
  :diminish smartparens-mode
  :init
  (smartparens-global-mode t)
  (show-smartparens-global-mode t)
  :config
  (sp-with-modes '(lisp-mode lisp-interaction-mode emacs-lisp-mode scheme-mode)
    (sp-local-pair "'" nil :actions nil)
    (sp-local-pair "`" nil :actions nil)))
