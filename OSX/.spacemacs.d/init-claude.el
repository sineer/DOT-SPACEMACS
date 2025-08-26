;; CLAUDE CODE IDE
(setq claude-code-ide-terminal-backend 'eat)

;; In your evil-mode configuration
(with-eval-after-load 'eat
  ;; Allow normal paste operations in eat mode
  (evil-define-key 'insert eat-mode-map
    (kbd "C-v") 'eat-yank
    (kbd "s-v") 'eat-yank
    (kbd "C-S-v") 'eat-yank)

  ;; Enable clipboard integration
  (evil-define-key 'normal eat-mode-map
    (kbd "p") 'eat-yank
    (kbd "P") 'eat-yank-before-cursor)

  ;; Make sure terminal receives paste events
  (setq eat-enable-mouse t)
  (setq eat-term-scrollback-size 10000))

;; Ensure clipboard works with eat
(setq eat-kill-buffer-on-exit t)
(setq eat-enable-yank-to-terminal t)

(use-package claude-code-ide
  :vc (:url "https://github.com/manzaltu/claude-code-ide.el" :rev :newest)
  :bind ("C-c C-'" . claude-code-ide-menu) ; Set your favorite keybinding
  :config
  (claude-code-ide-emacs-tools-setup)) ; Optionally enable Emacs MCP tools

(with-eval-after-load 'evil
  ;; Example using a leader key prefix (adjust to your preference)
  (define-prefix-command 'my-claude-prefix)
  (evil-define-key 'normal 'global "\\c" 'my-claude-prefix)

  (define-key my-claude-prefix "c" #'claude-code-ide-menu)
  (define-key my-claude-prefix "s" #'claude-code-ide)
  (define-key my-claude-prefix "r" #'claude-code-ide-resume)
  ;; etc...

  ;; Visual mode for sending selections
  (evil-define-key 'visual 'global "\\ci" #'claude-code-ide-insert-at-mentioned))
