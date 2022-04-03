
;; In my case /path/to/quicklisp is ~/quicklisp
(defvar quicklisp-path "/usr/home/cluster/common-lisp/quicklisp")
;;
;; Load slime-helper, this sets up various autoloads:
;;
(load (concat quicklisp-path "/slime-helper.el"))
;;
;; Set up slime with whatever modules you decide to use:
;;
(slime-setup '(slime-fancy slime-mrepl slime-banner slime-tramp
	                         slime-xref-browser slime-highlight-edits
	                         slime-sprof))
;;
;; Decide where to put a slime scratch file, if you want one, and set
;; it up with:
;;
(setf slime-scratch-file "/path/to/.slime-scratch.lisp")
;;
;; Unfortunately there is no hook for the slime-scratch mode so if you
;; want to automatically enable/disable various minor modes in the
;; slime scratch buffer you must do something like:
;;
(defadvice slime-scratch
    (after slime-scratch-adjust-modes () activate compile)
  (turn-some-mode-off)
  (turn-some-other-mode-on))
