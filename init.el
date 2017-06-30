(package-initialize)

(setq custom-file (locate-user-emacs-file "custom.el"))

;; server
(require 'server)
(unless (server-running-p)
  (server-start))

;; recompile
(defconst my-init-dir (locate-user-emacs-file "init.d"))
(add-hook 'kill-emacs-hook (lambda () (byte-recompile-directory my-init-dir 0 t)))

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
(add-to-list 'el-get-recipe-path (locate-user-emacs-file "recipes"))
(el-get 'sync)


;; use-package
(el-get-bundle use-package)
(require 'use-package)

;; req-package
(el-get-bundle req-package)
(use-package req-package
  :config
  (req-package--log-set-level 'trace))

(el-get-bundle general)

(req-package load-dir
  :loader :el-get
  :force t
  :init
  (setq force-load-messages nil)
  (setq load-dir-debug t)
  (setq load-dir-recursive t)
  :config
  (message "hoge")
  (load-dir-one my-init-dir)
  (req-package-finish))

;; init-loader
;; (req-package init-loader
;;   :loader :el-get
;;   :force t
;;   :init
;;   (setq init-loader-show-log-after-init t)
;;   :config
;;   (init-loader-load (locate-user-emacs-file "inits"))
;;   (req-package-finish))


