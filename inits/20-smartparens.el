(use-package smartparens
  :diminish smartparens-mode
  :init
  (smartparens-global-mode t)
  :config
  (ad-disable-advice 'delete-backward-char 'before 'sp-delete-pair-advice)
  (ad-activate 'delete-backward-char)
  (sp-with-modes '(lisp-mode lisp-interaction-mode emacs-lisp-mode scheme-mode)
    (sp-local-pair "'" nil :actions nil)
    (sp-local-pair "`" nil :actions nil)))
