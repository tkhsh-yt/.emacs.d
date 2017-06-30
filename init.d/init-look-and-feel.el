(require 'req-package)
(require 'el-get)

(req-package dracula-theme
  :loader :el-get
  :config
  (load-theme 'dracula t))

(req-package powerline
  :loader :el-get
  :config
  (powerline-default-theme))

(req-package diff-hl
  :loader :el-get
  :config
  (global-diff-hl-mode))

;; menubar

(req-package menu-bar
  :config
  (menu-bar-mode 0))

;; toolbar

(req-package tool-bar
  :config
  (tool-bar-mode 0))

;; scroll bar

(req-package scroll-bar
  :config
  (scroll-bar-mode 0))

;; dialog

(setq use-dialog-box nil)

;; line number

(req-package linum-mode
  :init
  (setq linum-delay t)
  :config
  (global-linum-mode t)
  (defadvice linum-schedule (around my-linum-schedule () activate)
    (run-with-idle-timer 0.2 nil #'linum-update-current)))

;; paren

(req-package show-paren-mode
  :coinfig
  (show-paren-mode t))

;; font

(set-face-attribute 'default nil :family "Source Han Code JP R")

;; transparent

(add-to-list 'default-frame-alist '(alpha . (0.9 0.9)))

;; mode line

(req-package display-time-mode
  :init
  (setq display-time-string-forms
	'((format
	   "%s/%s(%s) %s:%s" month day dayname 24-hours minutes))
	line-number-mode t
	column-number-mode t)
  :config
  (display-time-mode 1))

;; anzu

(req-package anzu
  :loader :el-get
  :diminish anzu-mode
  :init
  (setq anzu-replace-threshold 1000)
  (setq anzu-search-threshold 1000)
  :config
  (global-anzu-mode +1)
  (global-set-key [remap query-replace] 'anzu-query-replace)
  (global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
  (copy-face 'mode-line 'anzu-mode-line)) 

(provide 'init-look-and-feel)
