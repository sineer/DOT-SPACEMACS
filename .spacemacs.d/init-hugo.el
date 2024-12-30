;;; ox-hugo config
;;(use-package ox-hugo
;;  :ensure t
;;  :after org) ;Auto-install the package from Melpa (optional)

(define-key global-map (kbd "C-c C-e") 'easy-hugo)

;;; easy-hugo private config
(load-library "init-hugo-priv")
