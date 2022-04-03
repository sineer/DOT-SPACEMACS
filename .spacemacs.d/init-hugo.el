;;; ox-hugo config
;(use-package ox-hugo
;  :ensure t
;  :after org          ;Auto-install the package from Melpa (optional)

;;; easy-hugo config
(setq
      easy-hugo-url "http://127.0.0.1:1313"
      easy-hugo-preview-url "http://127.0.0.1:1313/"
      easy-hugo-basedir "~/b/local/"
      easy-hugo-postdir "content/post"
      easy-hugo-default-ext ".org"
      easy-hugo-org-header t
      easy-hugo-server-flags "-D"
      easy-hugo-image-directory "public/img"
      easy-hugo-default-picture-directory "pic")

(define-key global-map (kbd "C-c C-e") 'easy-hugo)

;;; easy-hugo private config
(load-library "init-hugo-priv")
