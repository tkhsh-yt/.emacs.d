(require 'req-package)
(require 'use-package-chords)
(require 'el-get)


(req-package key-chord
  :loader :el-get
  :chords (("  " . helm-M-x))
  :init
  (setq key-chord-one-key-delay 0.18))

(provide 'init-chord)
