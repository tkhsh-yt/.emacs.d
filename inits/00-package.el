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

;; Git
(el-get-bundle magit)
(el-get-bundle diff-hl)

;; Powerline
(el-get-bundle powerline)

;; For search
(el-get-bundle anzu)

;; For completion
(el-get-bundle auto-complete)

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

;;;; For programming
(el-get-bundle flycheck)
(el-get-bundle quickrun)

;; Go
(el-get-bundle go-mode)
(el-get-bundle go-eldoc)
(el-get-bundle go-autocomplete)
