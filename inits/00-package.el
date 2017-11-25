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

;; git

(el-get-bundle magit)
(el-get-bundle magit-popup)

;; highlight

(el-get-bundle highlight-symbol)

;; project

(el-get-bundle projectile)

(el-get-bundle ag)

;; jump

(el-get-bundle avy)

;; yank

(el-get-bundle easy-kill)

;; markdown

(el-get-bundle markdown-mode)

;; emoji

(el-get-bundle emoji-fontset)

;; org

(el-get-bundle org-bullets)

;; lisp

(el-get-bundle lispy
  :depends (swiper hydra))

;; scheme

(el-get-bundle geiser)
