(require 'bind-key)

(bind-key "C-' C-x C-l" 'toggle-truncate-lines)

;; C-h で一文字前を消す
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

;; ウィンドウサイズを変更するためのキーバインド
;; http://d.hatena.ne.jp/mooz/20100119/p1
(defun my-window-resizer ()
  "Control window size and position."
  (interactive)
  (let ((window-obj (selected-window))
        (current-width (window-width))
        (current-height (window-height))
        (dx (if (= (nth 0 (window-edges)) 0) 1
              -1))
        (dy (if (= (nth 1 (window-edges)) 0) 1
              -1))
        action c)
    (catch 'end-flag
      (while t
        (setq action
              (read-key-sequence-vector (format "size[%dx%d]"
                                                (window-width)
                                                (window-height))))
        (setq c (aref action 0))
        (cond ((= c ?l)
               (enlarge-window-horizontally dx))
              ((= c ?h)
               (shrink-window-horizontally dx))
              ((= c ?j)
               (enlarge-window dy))
              ((= c ?k)
               (shrink-window dy))
              ;; otherwise
              (t
               (let ((last-command-char (aref action 0))
                     (command (key-binding action)))
                 (when command
                   (call-interactively command)))
               (message "Quit")
               (throw 'end-flag t)))))))

(define-key global-map "\C-q" (make-sparse-keymap))
(bind-keys
 ("C-q C-r" . my-window-resizer)
 ("C-q h" . windmove-left)
 ("C-q j" . windmove-down)
 ("C-q k" . windmove-up)
 ("C-q l" . windmove-right))

;; quoted-insert は C-q C-q へ割り当て
(bind-key "C-q C-q" 'quoted-insert)

(provide 'init-keybinds)
