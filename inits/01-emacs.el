;; メニューバーを非表示

(menu-bar-mode 0)

;; ツールバーを非表示

(tool-bar-mode 0)

;; ダイアログを無効

(setq use-dialog-box nil)

;; 行番号を表示

(global-linum-mode t)

;; 起動時にメッセージを表示しない

(setq inhibit-startup-message t)

;; 言語を日本語にする

(set-language-environment 'Japanese)

;; UTF-8

(prefer-coding-system 'utf-8)

;; backup の保存先

(setq backup-directory-alist
      (cons (cons ".*" (expand-file-name "~/.emacs.d/backups"))
            backup-directory-alist))

(setq auto-save-file-name-trasforms
      `((".*", (expand-file-name "~/.emacs.d/backups/") t)))

;; yes/no を y/n に変更

(defalias 'yes-or-no-p 'y-or-n-p)

;; ビープ音，フラッシュを消す

(setq ring-bell-function 'ignore)

;;バッファの自動再読み込み

(global-auto-revert-mode 1)

;; 行の折り返し無効

(set-default 'truncate-lines t)
(setq truncate-partial-width-windows t)

;; 1 行単位でスクロール

(setq scroll-conservatively 1)

;; スペースでインデント

(setq-default indent-tabs-mode nil)

;; 括弧を強調

(show-paren-mode t)

;; 透過設定

(add-to-list 'default-frame-alist '(alpha . (0.9 0.9)))

;; 時計を表示

(setq display-time-string-forms
      '((format
         "%s/%s(%s) %s:%s" month day dayname 24-hours minutes))
      line-number-mode t
      column-number-mode t)
(display-time-mode 1)

;; スクロールバーを非表示

(set-scroll-bar-mode nil)

;; 起動時にフルスクリーンにする

(when (eq system-type 'darwin) ;; macOS
  (set-frame-parameter nil 'fullscreen 'fullboth))
