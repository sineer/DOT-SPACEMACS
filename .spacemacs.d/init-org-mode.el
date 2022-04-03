
;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . nil)
   (ditaa . nil)
   (dot . t)
   (emacs-lisp . t)
   (gnuplot . t)
   (haskell . nil)
   (latex . t)
   (ledger . t)
   (ocaml . nil)
   (octave . nil)
   (python . t)
   (ruby . nil)
   (screen . nil)
   (shell . t)
   (sql . nil)
   (sqlite . nil)
   (julia . nil)
   (python . t)
   (clojure . t)
   (lisp . t)
   (picolisp . nil)))

(setq org-confirm-babel-evaluate nil)


;; org-journal
(setq org-agenda-files (quote ("~/j/.jj/")))
(setq org-agenda-files-regex "\\`[^.].*\\.org'\\|[0-9]+")
(setq org-journal-dir "~/j/.jj"
      org-journal-file-format "%Y%m%d.org")
(evil-leader/set-key
  "jj" 'org-journal-new-entry)
(evil-leader/set-key-for-mode 'org-journal-mode
  "mn" 'org-journal-open-next-entry
  "mp" 'org-journal-open-previous-entry)


;;; ORG-ROAM
(setq org-roam-directory (file-truename "~/j/.0RG"))

(setq find-file-visit-truename t)

(org-roam-db-autosync-mode)

(require 'org-roam-protocol)

;; ORG-ROAM DAILIES
(setq org-roam-dailies-directory "DAILY/")

(setq org-roam-dailies-capture-templates
      '(("d" "default" entry
         "* %?"
         :target (file+head "%<%Y-%m-%d>.org"
                            "#+title: %<%Y-%m-%d>\n"))))
