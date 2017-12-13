(use-package tuareg)

(defvar ocaml-version "4.06.0")
(defvar opam-root (concat "~/.opam/"))
(defvar merlin-share-dir (concat opam-root ocaml-version "/share/emacs/site-lisp"))
(defvar merlin-bin-dir (concat opam-root ocaml-version "/bin/ocamlmerlin"))

(push merlin-share-dir load-path)
(setq merlin-command (concat merlin-bin-dir))
(autoload 'merlin-mode "merlin" "Merlin mode" t)

(use-package merlin-mode
  :defer t
  :init
  (add-hook 'tuareg-mode-hook 'merlin-mode)
  (add-hook 'caml-hode-hook 'merlin-mode))
