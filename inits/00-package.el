;; ime

(el-get-bundle ddskk)

;; theme

(el-get-bundle dracula-theme)
(el-get-bundle zenburn-theme)

;; path

(el-get-bundle exec-path-from-shell)

;; dired

(el-get-bundle dired-hacks)

(el-get-bundle dired-k)

;; complement

(el-get-bundle company-mode)

;; tab

(el-get-bundle elscreen)

;; search

(el-get-bundle anzu)

;; paren

(el-get-bundle smartparens)

;; undo

(el-get-bundle undohist)

(el-get-bundle undo-tree)
(el-get-bundle point-undo)

(el-get-bundle redo+)

;; recentf

(el-get-bundle recentf-ext)

;; helm

(el-get-bundle helm)
(el-get-bundle helm-descbinds)
(el-get-bundle helm-swoop)
(el-get-bundle helm-ag)
(el-get-bundle helm-projectile)
(el-get-bundle helm-ghq)

;; git

(el-get-bundle magit)
(el-get-bundle magit-popup)

;; highlight

(el-get-bundle highlight-symbol)

(el-get-bundle diff-hl)

;; Flycheck

(el-get-bundle flycheck)

;; project

(el-get-bundle projectile)

(el-get-bundle ag)

;; jump

(el-get-bundle avy)

;; cursor

(el-get-bundle multiple-cursors)
(el-get-bundle mc-extras)
(el-get-bundle expand-region)
(el-get-bundle region-bindings-mode)

;; yank

(el-get-bundle easy-kill)

;; snippet

(el-get-bundle yasnippet)

;; markdown

(el-get-bundle markdown-mode)

;; org

(el-get-bundle org-bullets)

;; pdf

(el-get-bundle pdf-tools)

;; tex

(el-get-bundle auctex)

;;; programming

(el-get-bundle quickrun)

;; lisp

(el-get-bundle lispy
  :depends (swiper hydra))

;; scheme

(el-get-bundle geiser)

;; go

(el-get-bundle go-mode)

(el-get-bundle go-company)

(el-get-bundle go-eldoc)

;; clojure

(el-get-bundle clojure-mode)

(el-get-bundle cider)

(el-get-bundle clojure-snippets)

;; ocaml

(el-get-bundle tuareg)

(el-get-bundle merlin)

(el-get-bundle ocamlspot)

;; scala

(el-get-bundle scala-mode)

(el-get-bundle ensime)
