;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
 
(package-initialize)

(setq custom-file (locate-user-emacs-file "custom.el"))

;; el-get
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; use-package
(el-get-bundle use-package)
(require 'use-package)

;; init-loader
(el-get-bundle init-loader)
(use-package init-loader
  :config
  (setq init-loader-show-log-after-init nil)
  (init-loader-load "~/.emacs.d/inits"))

(el-get-bundle auto-compile)

(use-package auto-compile
  :no-require t
  :defer t
  :diminish auto-compile-mode
  :init
  (add-hook 'emacs-lisp-mode-hook 'auto-compile-mode))
