(defun delete-word (arg)
  (interactive "p")
  (delete-region (point) (progn (forward-word arg) (point))))

(defun backward-delete-word (arg)
  (interactive "p")
  (delete-word (- arg)))

(bind-key* "M-d" 'delete-word)
(unbind-key [C-backspace])
(bind-key* [C-backspace] 'backward-delete-word)
