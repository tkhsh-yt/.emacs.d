;; フォント

(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :family "Cica" :height 200))

(when (eq system-type 'gnu/linux)
  (set-face-attribute 'default nil :family "Cica" :height 170))
