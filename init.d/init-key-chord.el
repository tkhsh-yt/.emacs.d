(require 'req-package)
(require 'use-package-chords)
(require 'el-get)


(req-package key-chord
  :loader :el-get
  :chords ((":l" . helm-mini)
	   (":s" . helm-swoop)
	   (";S" . helm-multi-swoop-all)
	   (":y" . helm-show-kill-ring))
  :init
  (setq key-chord-one-key-delay 0.18)
  (setq key-chord-two-keys-delay 0.04))

(provide 'init-chord)
