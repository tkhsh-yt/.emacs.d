(require 'req-package)
(require 'use-package-chords)
(require 'el-get)


(req-package key-chord
  :loader :el-get
  :init
  (setq key-chord-one-key-delay 0.18)
  (setq key-chord-two-keys-delay 0.04))

(provide 'init-chord)
