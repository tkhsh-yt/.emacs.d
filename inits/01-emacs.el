;; 起動時にメッセージを表示しない
(setq inhibit-startup-message t)

;; 言語を日本語にする
(set-language-environment 'Japanese)

;; UTF-8
(prefer-coding-system 'utf-8)

;; メニューバーを非表示
(menu-bar-mode 0)

;; ツールバーを非表示
(tool-bar-mode 0)

;; 対応する括弧を強調する
(show-paren-mode t)

;; 括弧の自動挿入
(electric-pair-mode t)

;; ダイアログを使わないようにする
(setq use-dialog-box nil)

;; 行番号の表示
(global-linum-mode t)

;; スクロールバーを非表示
(scroll-bar-mode 0)

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

;; フォントを設定
(set-face-attribute 'default nil :family "Source Han Code JP R")

;; C-k で行全体を削除
(setq kill-whole-line t)

;; 透過
(add-to-list 'default-frame-alist '(alpha . (0.9 0.9)))

;; 自動改行オフ
(setq text-mode-hook 'turn-off-auto-fill)

