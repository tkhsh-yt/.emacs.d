(use-package pdf-annot)
(use-package pdf-history)
(use-package pdf-info)
(use-package pdf-isearch)
(use-package pdf-links)
(use-package pdf-misc)
(use-package pdf-occur)
(use-package pdf-outline)
(use-package pdf-sync)
(use-package tablist-filter)
(use-package tablist)

(use-package pdf-tools
  :init
  (add-to-list 'auto-mode-alist (cons "\\.pdf$" 'pdf-view-mode))
  :config
  (add-hook 'pdf-view-mode-hook
            (lambda ()
              (pdf-sync-minor-mode)
              (pdf-misc-size-indication-minor-mode)
              (pdf-links-minor-mode)
              (pdf-isearch-minor-mode))))
