(require 'req-package)
(require 'el-get)

(req-package multiple-cursors
  :loader :el-get
  :require (smartrep)
  :bind (("C-M-c" . mc/edit-lines)
	 ("C-M-r" . mc/mark-all-in-region))
  :init
  (global-unset-key "\C-t")
  (smartrep-define-key global-map "C-t"
    '(("C-t" . 'mc/mark-next-like-this)
      ("n" . 'mc/mark-next-like-this)
      ("p" . 'mc/mark-previous-like-this)
      ("u" . 'mc/unmark-next-like-this)
      ("U" . 'mc/unmark-previous-like-this)
      ("s" . 'mc/skip-to-next-like-this)
      ("S" . 'mc/skip-to-previous-like-this)
      ("*" . 'mc/mark-all-like-this)
      ("i" . 'mc/insert-numbers)
      ("I" . 'my/mc/insert-numbers)
      ("d" . 'mc/mark-all-like-this-dwim)))
  :init
  (defvar my/mc/insert-numbers-hist nil)
  (defvar my/mc/insert-numbers-inc 1)
  (defvar my/mc/insert-numbers-pad "%01d")

  (defun my/mc/insert-numbers (start inc pad)
    "Insert increasing numbers for each cursor specifically."
    (interactive
     (list (read-number "Start from: " 0)
	   (read-number "Increment by: " 1)
	   (read-string "Padding (%01d): " nil my/mc/insert-numbers-hist "%01d")))
    (setq mc--insert-numbers-number start)
    (setq my/mc/insert-numbers-inc inc)
    (setq my/mc/insert-numbers-pad pad)
    (mc/for-each-cursor-ordered
     (mc/execute-command-for-fake-cursor
      'my/mc--insert-number-and-increase
      cursor)))

  (defun my/mc--insert-number-and-increase ()
    (interactive)
    (insert (format my/mc/insert-numbers-pad mc--insert-numbers-number))
    (setq mc--insert-numbers-number (+ mc--insert-numbers-number my/mc/insert-numbers-inc))))

(provide 'init-multiple-cursors)
