(provide 'req-package)
(provide 'el-get)

(req-package scala-mode2
  :loader :el-get
  :interpreter
  ("scala" . scala-mode)
  :config
  (add-hook 'scala-mode-hook (lambda ()
			       (setq prettify-symbols-alist scala-prettify-symbols)
                               (prettify-symbols-mode))))

(req-package ensime
  :loader :el-get
  :init
  (setq ensime-startup-snapshot-notification nil)
  (setq ensime-startup-notification nil)
  (setq ensime-completion-style 'company)
  (add-hook 'ensime-mode-hook #'scala/enable-eldoc)
  (add-hook 'scala-mode-hook (lambda ()
                               'ensime-scala-mode-hook)))

(defun scala/enable-eldoc ()
  "Show error message or type name at point by Eldoc."
  (setq-local eldoc-documentation-function
              #'(lambda ()
                  (when (ensime-connected-p)
                    (let ((err (ensime-print-errors-at-point)))
                      (or (and err (not (string= err "")) err)
                          (ensime-type-at-point))))))
  (eldoc-mode +1))

(defun scala/completing-dot-company ()
  (cond (company-backend
         (company-complete-selection)
         (scala/completing-dot))
        (t
         (insert ".")
         (company-complete))))

(defun scala/completing-dot-ac ()
  (insert ".")
  (ac-trigger-key-command t))

;; Interactive commands

(defun scala/completing-dot ()
  "Insert a period and show company completions."
  (interactive "*")
  (eval-and-compile (require 'ensime))
  (eval-and-compile (require 's))
  (when (s-matches? (rx (+ (not space)))
                    (buffer-substring (line-beginning-position) (point)))
    (delete-horizontal-space t))
  (cond ((not (and (ensime-connected-p) ensime-completion-style))
         (insert "."))
        ((eq ensime-completion-style 'company)
         (scala/completing-dot-company))
        ((eq ensime-completion-style 'auto-complete)
         (scala/completing-dot-ac))))

;; prettify-symbols
(setq scala-prettify-symbols
      '(("=>" . ?⇒)
	("<-" . ?←)
	("->" . ?→)
	("undefined" . ?⊥)
	("&&" . ?∧)
	("||" . ?∨)
	("<<<" . ?⋘)
	(">>>" . ?⋙)
	("++" . ?⧺)
	("any" . ?∃)
	("all" . ?∀)
	("traverse" . ?↦)
	("lambda" . ?λ)
	("alpha" . ?α)
	("beta" . ?β)
("Unit" . ?∅)))

(provide 'init-scala)
