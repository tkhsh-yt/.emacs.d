;;;; Dependencies
;;;; - opam
;;;;   - ocamlspot
;;;;   - merlin

(use-package tuareg-mode
  :defer t
  :commands (tuareg-mode tuareg-run-ocaml ocamldebug)
  :mode (("\\.ml[iylp]\\?" . tuareg-mode)))

(defvar ocaml-version "4.06.0")
(defvar opam-root (concat "~/.opam/" ocaml-version))
(defvar merlin-share-dir (concat opam-root "/share/emacs/site-lisp"))
(defvar merlin-bin-dir (concat opam-root "/bin/ocamlmerlin"))

(push merlin-share-dir load-path)
(setq merlin-command (concat merlin-bin-dir))
(autoload 'merlin-mode "merlin" "Merlin mode" t)

(use-package merlin-mode
  :defer t
  :init
  (add-hook 'tuareg-mode-hook 'merlin-mode)
  (add-hook 'caml-hode-hook 'merlin-mode))

(use-package ocamlspot
  ;; :bind (:tuareg-mode-map
  ;;        ("C-c ;" . ocamlspot-query)
  ;;        ("C-c :" . ocamlspot-query-interface)
  ;;        ("C-c '" . ocamlspot-query-uses)
  ;;        ("C-c C-t" . ocamlspot-type)
  ;;        ("C-c C-y" . ocamlspot-type-and-copy)
  ;;        ("C-c t" . caml-types-show-type)
  ;;        ("C-c p" . ocamlspot-pop-jump-stack))
  :init
  (add-hook 'tuareg-mode-hook
            '(lambda ()
               (local-set-key "\C-c;" 'ocamlspot-query)
               (local-set-key "\C-c:" 'ocamlspot-query-interface)
               (local-set-key "\C-c'" 'ocamlspot-query-uses)
               (local-set-key "\C-c\C-t" 'ocamlspot-type)
               (local-set-key "\C-c\C-i" 'ocamlspot-xtype)
               (local-set-key "\C-c\C-y" 'ocamlspot-type-and-copy)
               (local-set-key "\C-ct" 'caml-types-show-type)
               (local-set-key "\C-cp" 'ocamlspot-pop-jump-stack)))
  (setq ocamlspot-command (concat opam-root "/bin/ocamlspot")))
