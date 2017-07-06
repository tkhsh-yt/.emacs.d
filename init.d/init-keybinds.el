(require 'bind-key)

(bind-key "C-' C-x C-l" 'toggle-truncate-lines)

;; C-h で一文字前を消す
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

(define-key global-map "\C-q" (make-sparse-keymap))

(bind-key "C-q C-q" 'quoted-insert)

(provide 'init-keybinds)
