
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
   (ruby . t)
   (screen . nil)
   (shell . t)
   (sql . nil)
   (sqlite . t)
   (julia . nil)
   (ruby . t)
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
