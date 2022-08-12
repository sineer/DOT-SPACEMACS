;;; hugo private config

(setq easy-hugo-bloglist
      '(;; ddd.engineering
        ((easy-hugo-basedir . "~/b/ddd.eng/")
         (easy-hugo-postdir . "content/post")
         (easy-hugo-image-directory . "public/img")
         (easy-hugo-default-picture-directory . "pic")
         (easy-hugo-url . "https://ddd.engineering")
         (easy-hugo-preview-url . "http://127.0.0.1:1313/")
         (easy-hugo-sshdomain . "ddd.engineering")
         (easy-hugo-root . "/home/ddd.eng/")
         (easy-hugo-server-flags . "-D")
         (easy-hugo-server-flags2 . "-s")
         (easy-hugo-server-value2 . "~/b/ddd.eng"))
        ;; sineer.com
        ((easy-hugo-basedir . "~/b/sineer.com/")
         (easy-hugo-postdir . "content/post")
         (easy-hugo-image-directory . "public/img")
         (easy-hugo-default-picture-directory . "pic")
         (easy-hugo-url . "https://sineer.com")
         (easy-hugo-preview-url . "http://127.0.0.1:1313/")
         (easy-hugo-sshdomain . "sineer.com")
         (easy-hugo-root . "/home/sineer/")
         (easy-hugo-server-flags . "-D")
         (easy-hugo-server-flags2 . "-s")
         (easy-hugo-server-value2 . "~/b/sineer.com"))
        ;; sin.io
        ((easy-hugo-basedir . "~/b/sin.io/")
         (easy-hugo-postdir . "content/post")
         (easy-hugo-image-directory . "public/img")
         (easy-hugo-default-picture-directory . "pic")
         (easy-hugo-url . "https://sin.io")
         (easy-hugo-preview-url . "http://127.0.0.1:1313/")
         (easy-hugo-sshdomain . "sin.io")
         (easy-hugo-root . "/home/sin.io/")
         (easy-hugo-server-flags . "-D")
         (easy-hugo-server-flags2 . "-s")
         (easy-hugo-server-value2 . "~/b/sin.io"))
        ;; war.io
        ((easy-hugo-basedir . "~/b/war.io/")
         (easy-hugo-postdir . "content/post")
         (easy-hugo-image-directory . "public/img")
         (easy-hugo-default-picture-directory . "pic")
         (easy-hugo-url . "https://war.io")
         (easy-hugo-preview-url . "http://127.0.0.1:1313/")
         (easy-hugo-sshdomain . "war.io")
         (easy-hugo-root . "/home/war.io/")
         (easy-hugo-server-flags . "-D")
         (easy-hugo-server-flags2 . "-s")
         (easy-hugo-server-value2 . "~/b/war.io"))))


(provide 'init-hugo-priv)
