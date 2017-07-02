(require 'req-package)
(require 'el-get)

(req-package recentf
  :loader :build-in
  :init
  (setq recentf-max-saved-items 2000
	recentf-auto-cleanup 'never
	recent-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list)))

(req-package recentf-ext
  :loader :el-get)

(provide 'init-recentf)
