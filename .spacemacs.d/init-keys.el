;; DEADGREP
(global-set-key (kbd "C-;") 'deadgrep)


;; http://stackoverflow.com/questions/8483182/evil-mode-best-practice
;;(define-key evil-insert-state-map "\C-a" 'evil-beginning-of-line)
(define-key evil-normal-state-map "\C-e" 'evil-end-of-line)
(define-key evil-visual-state-map "\C-e" 'evil-end-of-line)
(define-key evil-motion-state-map "\C-e" 'evil-end-of-line)
(define-key evil-hybrid-state-map "\C-e" 'evil-end-of-line)
;; (define-key evil-normal-state-map "\C-f" 'evil-forward-char)
;; (define-key evil-insert-state-map "\C-f" 'evil-forward-char)
;; (define-key evil-insert-state-map "\C-f" 'evil-forward-char)
;; (define-key evil-normal-state-map "\C-b" 'evil-backward-char)
;; (define-key evil-insert-state-map "\C-b" 'evil-backward-char)
;; (define-key evil-visual-state-map "\C-b" 'evil-backward-char)
(define-key evil-normal-state-map "\C-d" 'evil-delete-char)
(define-key evil-insert-state-map "\C-d" 'evil-delete-char)
(define-key evil-visual-state-map "\C-d" 'evil-delete-char)
(define-key evil-hybrid-state-map "\C-d" 'evil-delete-char)
;; (define-key evil-normal-state-map "\C-n" 'evil-next-line)
;; (define-key evil-insert-state-map "\C-n" 'evil-next-line)
;; (define-key evil-visual-state-map "\C-n" 'evil-next-line)
;; (define-key evil-normal-state-map "\C-p" 'evil-previous-line)
;; (define-key evil-insert-state-map "\C-p" 'evil-previous-line)
;; (define-key evil-visual-state-map "\C-p" 'evil-previous-line)
(define-key evil-normal-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-w" 'evil-delete)
(define-key evil-visual-state-map "\C-w" 'evil-delete)
(define-key evil-hybrid-state-map "\C-w" 'evil-delete)

;; (define-key evil-normal-state-map "\C-y" 'yank)
;; (define-key evil-insert-state-map "\C-y" 'yank)
;; (define-key evil-visual-state-map "\C-y" 'yank)
(define-key evil-normal-state-map "\C-k" 'delete-line-no-kill)
(define-key evil-insert-state-map "\C-k" 'delete-line-no-kill)
(define-key evil-visual-state-map "\C-k" 'delete-line-no-kill)
(define-key evil-hybrid-state-map "\C-k" 'delete-line-no-kill)

;; (define-key evil-normal-state-map "Q" 'call-last-kbd-macro)
;; (define-key evil-visual-state-map "Q" 'call-last-kbd-macro)
;; (define-key evil-normal-state-map (kbd "TAB") 'evil-undefine)
;; (defun evil-undefine ()
;;   (interactive)
;;   (let (evil-mode-map-alist)
;;     (call-interactively (key-binding (this-command-keys)))))

;; UNDO/REDO
(define-key evil-normal-state-map (kbd "C-z") 'undo-fu-only-undo)
(define-key evil-insert-state-map (kbd "C-z") 'undo-fu-only-undo)
(define-key evil-visual-state-map (kbd "C-z") 'undo-fu-only-undo)
(define-key evil-hybrid-state-map (kbd "C-z") 'undo-fu-only-undo)

(define-key evil-normal-state-map (kbd "C-S-z") 'undo-fu-only-redo)
(define-key evil-insert-state-map (kbd "C-S-z") 'undo-fu-only-redo)
(define-key evil-visual-state-map (kbd "C-S-z") 'undo-fu-only-redo)
(define-key evil-hybrid-state-map (kbd "C-S-z") 'undo-fu-only-redo)

(define-key evil-normal-state-map (kbd "M-z") 'undo-fu-only-undo)
(define-key evil-insert-state-map (kbd "M-z") 'undo-fu-only-undo)
(define-key evil-visual-state-map (kbd "M-z") 'undo-fu-only-undo)
(define-key evil-hybrid-state-map (kbd "M-z") 'undo-fu-only-undo)

(define-key evil-normal-state-map (kbd "M-Z") 'undo-fu-only-redo)
(define-key evil-insert-state-map (kbd "M-Z") 'undo-fu-only-redo)
(define-key evil-visual-state-map (kbd "M-Z") 'undo-fu-only-redo)
(define-key evil-hybrid-state-map (kbd "M-Z") 'undo-fu-only-redo)



(defun delete-line-no-kill ()
  (delete-region (point) (line-end-position)))
(global-set-key (kbd "C-k") 'delete-line-no-kill)


;; Barfage & Slurpage
(global-set-key (kbd "C-)") 'sp-forward-slurp-sexp)
(global-set-key (kbd "M-S-<right>") 'sp-forward-slurp-sexp)
(global-set-key (kbd "C-}") 'sp-forward-barf-sexp)
(global-set-key (kbd "M-S-<left>") 'sp-forward-barf-sexp)
(global-set-key (kbd "C-(") 'sp-backward-slurp-sexp)
(global-set-key (kbd "C-M-<left>") 'sp-backward-slurp-sexp)
(global-set-key (kbd "C-{") 'sp-backward-barf-sexp)
(global-set-key (kbd "C-M-<right>") 'sp-backward-barf-sexp)

;; COMMENT-REGION
(global-set-key (kbd "C-;") 'comment-region)
(global-set-key (kbd "C-?") 'uncomment-region)

;;(eval-after-load 'undo-tree
;;  '(progn
;;     (define-key undo-tree-map (kbd "C-?") nil)
;;     (define-key undo-tree-map (kbd "C-/") nil)))

;; EVIL-WINDOW-UP/DOWN/LEFT/RIGHT AND SIDE TO SIDE!
(global-set-key (kbd "M-s-<up>") 'evil-window-up)
(global-set-key (kbd "M-s-<down>") 'evil-window-down)
(global-set-key (kbd "M-s-<left>") 'evil-window-left)
(global-set-key (kbd "M-s-<right>") 'evil-window-right)
