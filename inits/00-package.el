;; For path
(el-get-bundle exec-path-from-shell)

(el-get-bundle diminish)

;; For Japanese
(el-get-bundle ddskk)
(el-get-bundle migemo)

;; Theme
(el-get-bundle dracula-theme)

;; Helm
(el-get-bundle helm)
(el-get-bundle helm-swoop)
(el-get-bundle helm-projectile)
(el-get-bundle helm-descbinds)
(el-get-bundle helm-company)

;; Git
(el-get-bundle magit)
(el-get-bundle diff-hl)

;; Powerline
(el-get-bundle powerline)

;; For search
(el-get-bundle anzu)

;; For completion
(el-get-bundle company-mode)

;; Proejctile
(el-get-bundle projectile
  :depends (helm-ag))

;; Tab
(el-get-bundle elscreen)
(el-get-bundle emacs-helm/helm-elscreen)

;; Undo
(el-get-bundle undohist)
(el-get-bundle undo-tree)

;; Utility
(el-get-bundle smartparens)
(el-get-bundle avy)
(el-get-bundle expand-region)

;; Org
(el-get-bundle org-bullets)

;;;; For programming
(el-get-bundle flycheck)
(el-get-bundle quickrun)
(el-get-bundle yasnippet)

;; Markdown
(el-get-bundle markdown-mode)

;; Make
(el-get-bundle abo-abo/helm-make)

;; Go
(el-get-bundle go-mode)
(el-get-bundle go-eldoc)
(el-get-bundle company-go
  :url "https://raw.githubusercontent.com/nsf/gocode/master/emacs-company/company-go.el"
  :depends (company-mode go-mode))

;; C
(el-get-bundle c-eldoc)
(el-get-bundle auto-complete-c-headers)

;; Lisp
(el-get-bundle paredit)

;; Clojure
(el-get-bundle clojure-mode)

(el-get-bundle NicolasPetton/seq.el)
(el-get-bundle magnars/multiple-cursors.el)
(el-get-bundle expez/edn.el)
(el-get-bundle emacsmirror/peg)
(el-get-bundle abo-abo/hydra)
(el-get-bundle clojure-emacs/cider)

(el-get-bundle clojure-emacs/clj-refactor.el)
(el-get-bundle clojure-emacs/clojure-cheatsheet)
(el-get-bundle mpenet/clojure-snippets)
