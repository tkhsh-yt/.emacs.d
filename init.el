(package-initialize)

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

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; use-package

(el-get-bundle use-package)
(require 'use-package)

;; diminish

(el-get-bundle diminish)
(use-package diminish)

;; init-loader

(el-get-bundle init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

;; Emacs 25 から追加された package-selected-packages を分離

(setq custom-file (locate-user-emacs-file "custom.el"))
