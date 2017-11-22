;; フォント

(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :family "Source Han Code JP" :height 160))

(when (eq system-type 'gnu/linux)
  (set-face-attribute 'default nil :family "Source Han Code JP" :height 125))

;; 絵文字
(custom-set-variables '(emoji-fontset-check-version nil))
(emoji-fontset-enable "Symbola")
