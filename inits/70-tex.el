(use-package tex-site
  :config
  (setq TeX-PDF-mode t)
  (setq TeX-source-correlate-method 'synctex)
  (setq TeX-source-correalte-mode t)
  (add-hook 'LaTeX-mode-hook 'pdf-sync-minor-mode)
  (add-hook 'LaTeX-mode-hook
            (function (lambda ()
                        (add-to-list 'TeX-command-list
                                     '("latexmk"
                                       "latexmk -pdfdvi %t"
                                       TeX-run-Tex nil
                                       (latex-mode doctex-mode) :help "Run latexmk")))))
  (setq TeX-command-default "latexmk")
  (setq TeX-view-program-section '((output-pdf "pdf-tools")))
  (setq TeX-view-program-list '(("pdf-tools" "TeX-pdf-tools-sync-view")))
  (defun TeX-revert-PDF-buffer (file)
    (message (concat "TeX revert from " file))
    (TeX-revert-document-buffer (replace-regexp-in-string "[^.]*$" "pdf" file)))
  (add-hook 'TeX-after-compilation-finished-functions 'TeX-revert-PDF-buffer))
