(use-package markdown-mode
  :defer t
  :mode (("\\.md?\\'" . markdown-mode))
  :config
  (set-face-attribute 'markdown-code-face nil :inherit 'default))
