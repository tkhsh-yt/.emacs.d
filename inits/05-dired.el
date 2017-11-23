;; dired を 2つのウィンドウで開いている時に，
;; デフォルトの移動 or コピー先をもう一方の dired で開いているディレクトリにする
(setq dired-dwim-target t)

;; ディレクトリ再帰的にコピー
(setq dired-recursive-copies 'always)

;; dired バッファで C-s した時にファイル名だけマッチさせる
(setq dired-isearch-filenames t)

(use-package dired-filter
  :defer t
  :init
  (dired-filter-mode t))

(use-package dired-k
  :defer t
  :bind () (:map dired-mode-map
                 ("g" . dired-k))
  :init
  (add-hook 'dired-initial-position-hook 'dired-k)
  (add-hook 'dired-after-readin-hook #'dired-k-no-revert))

(use-package dired-subtree
  :defer t
  :bind (:map dired-mode-map
              ("i" . dired-subtree-insert)
              ("<tab>" . dired-subtree-remove)
              ("C-x n n" . dired-subtree-narrow)))

(use-package dired-collapse
  :defer t
  :init
  (add-hook 'dired-initial-position-hook 'dired-collapse-mode))
