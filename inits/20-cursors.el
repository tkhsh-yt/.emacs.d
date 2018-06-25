(use-package region-bindings-mode
  :init
  (region-bindings-mode-enable))

(use-package expand-region
  :bind (:map region-bindings-mode-map
              ("+" . 'er/expand-region)
              ("-" . 'er/contract-region)))

(use-package multiple-cursors
  :bind (("C-:" . 'mc/mark-all-dwim)
         :map region-bindings-mode-map
         ("a" . 'mc/mark-all-like-this-dwim)
         ("p" . 'mc/mark-previous-like-this)
         ("n" . 'mc/mark-next-like-this)
         ("u" . 'mc/remove-current-cursor)
         ("<tab>" . 'mc/cycle-forward)
         ("<backtab>" . 'mc/cycle-backward)
          ("m" . 'mc/mark-more-like-this-extended)))
