(use-package clojure-mode
  :init
  (add-hook 'clojure-mode-hook #'yas-minor-mode)
  (add-hook 'clojure-mode-hook #'subword-mode)
  (add-hook 'clojure-mode-hook #'paredit-mode)
  (custom-set-variables '(clojure-align-forms-automatically t)))

(use-package cider
  :diminish subword-mode
  :init
  (add-hook 'cider-mode-hook #'clj-refactor-mode)
  (add-hook 'cider-mode-hook #'company-mode)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'company-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  (setq nrepl-log-messages t
        cider-repl-display-in-current-window t
        Ciderc-repl-use-clojure-font-lock t
        cider-prompt-save-file-on-load 'always-save
        cider-font-lock-dynamically '(macro core function var)
        cider-overlays-use-font-lock t)
  :config
  (cider-repl-toggle-pretty-printing))

(use-package clj-refactor
  :diminish clj-refactor-mode
  :config
  (clj-refactor-mode)
  (cljr-add-keybindings-with-prefix "C-c j"))

