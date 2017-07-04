(require 'req-package)

;; 起動時にメッセージを表示しない
(setq inhibit-startup-message t)

;; 言語を日本語にする
(set-language-environment 'Japanese)

;; UTF-8
(prefer-coding-system 'utf-8)

;; 括弧の自動挿入
(electric-pair-mode t)

;; backup の保存先
(setq backup-directory-alist
      (cons (cons ".*" (expand-file-name "~/.emacs.d/backups"))
	    backup-directory-alist))

(setq auto-save-file-name-transforms
      `((".*", (expand-file-name "~/.emacs.d/backups/") t)))

;; yes/no ではなく y/n
(defalias 'yes-or-no-p 'y-or-n-p)
 
;; ビープ音, フラッシュを消す
(setq ring-bell-function 'ignore)

;; バッファの自動再読み込み
(global-auto-revert-mode 1)

(set-default 'truncate-lines t)
(setq truncate-partial-width-windows t)

;; sroll

(setq scroll-conservatively 1)

;; delete

(setq kill-whole-line t)
(delete-selection-mode 1)

;; buffer
(bind-key "M-[" 'switch-to-prev-buffer)
(bind-key "M-]" 'switch-to-next-buffer)

(provide 'init-emacs)
