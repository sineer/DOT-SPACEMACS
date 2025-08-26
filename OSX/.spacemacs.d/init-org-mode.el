;; XXX: Many Babel languages disabled - remove unused ones
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
   (ledger . nil)
   (ocaml . nil)
   (octave . nil)
   (python . t)
   (ruby . nil)
   (screen . nil)
   (shell . t)
   (sql . nil)
   (sqlite . nil)
   (julia . nil)
   (clojure . t)
   (lisp . t)))

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

(setq find-file-visit-truename t)

(add-hook 'org-mode-hook #'org-modern-mode)
(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)
