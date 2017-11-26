(use-package scala-mode
  :defer t)

(use-package ensime
  :defer t
  :init
  (add-hook 'ensime-mode-hook #'scala/enable-eldoc)
  ;; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
  :config
  (setq ensime-startup-notification nil)
  (setq ensime-completion-style 'company)
  (setq ensime-eldoc-hints nil))

(defun scala/enable-eldoc ()
  "Show error message or type name at point by Eldoc."
  (setq-local eldoc-documentation-function
              #'(lambda ()
                  (when (ensime-connected-p)
                    (let ((err (ensime-print-errors-at-point)))
                      (or (and err (not (string= err "")) err)
                          (ensime-type-at-point))))))
  (eldoc-mode +1))
