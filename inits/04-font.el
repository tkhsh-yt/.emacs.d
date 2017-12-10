;; フォント

(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :family "Source Han Code JP" :height 160))

(when (eq system-type 'gnu/linux)
  (set-face-attribute 'default nil :family "Source Han Code JP" :height 125))

