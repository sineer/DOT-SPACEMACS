;;(setq mu4e-mu-binary "/opt/homebrew/bin/mu")

;; general emacs mail settings; used when composing e-mail
;; the non-mu4e-* stuff is inherited from emacs/message-mode
;; (setq mu4e-reply-to-address "me@example.com"
;;     user-mail-address "me@example.com"
;;     user-full-name  "Rob Stewart")


(setq sendmail-program "msmtp"
      send-mail-function 'smtpmail-send-it
      message-sendmail-f-is-evil t
      message-sendmail-extra-arguments '("--read-envelope-from")
      message-send-mail-function 'message-send-mail-with-sendmail)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

;; threading and duplicates
(setq mu4e-use-fancy-chars t)
;; (setq mu4e-headers-results-limit 500)
;; (setq mu4e-headers-show-threads nil)
;; (setq mu4e-headers-skip-duplicates t)

;; fields in list view
(setq mu4e-headers-fields
      '( (:human-date    .  15)
         (:flags         .   5)
         (:from          .  30)
         (:subject       .  nil)))

;; Fields on message view
(setq mu4e-view-fields
      '(:from :to  :cc :subject :mailing-list :tags :flags :date :maildir :attachments :signature))

(setq mu4e-mu-home "~/.cache/mu")

;; Bookmarks
(setq mu4e-bookmarks
      '(("flag:unread"                      "New"                  ?n)
        ("flag:flagged"                     "Flagged"              ?g)
        ("date:today..now"                  "Today's messages"     ?t)
        ("date:7d..now"                     "Last 7 days"          ?w)))
;;("mime:image/*"                     "Messages with images" ?p)
;;("tag:\\\\.SENT AND date:365d..now" "Sent"                 ?s)


(setq mu4e-change-filenames-when-moving t)

;; XXX ???
;; don't save message to Sent Messages, IMAP takes care of this
;; (setq mu4e-sent-messages-behavior 'delete)

;; (require 'mu4e-contrib)


;; XXX
;;(setq message-signature-file "~/.spacemacs.d/.signature")


(setq mu4e-enable-mode-line t)

(setq mu4e-view-show-addresses  t
      mu4e-view-show-images     t
      mu4e-show-images          t
      mu4e-view-image-max-width 800)


;; (setq mu4e-html2text-command 'mu4e-shr2text)
(defun my-render-html-message ()
  (let ((dom (libxml-parse-html-region (point-min) (point-max))))
    (erase-buffer)
    (shr-insert-document dom)
    (goto-char (point-min))))
(setq mu4e-html2text-command 'my-render-html-message)

;;;; mu4e-html2text-command "LC_CTYPE=en_US.ISO-8859-1 w3m -I 'iso-8859-1' -T text/html"
;;;; mu4e-html2text-command "w3m -I utf8 -O utf8 -T text/html"
;;;; mu4e-html2text-command "w3m -dump -cols 80 -O UTF-8 -I UTF-8 -T text/html"
;;;; mu4e-html2text-comment "textutil -stdin -format html -convert txt -stdout"
;;;; mu4e-html2text-command "html2text -utf8 -nobs -width 80"


;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

(add-hook 'mu4e-compose-mode-hook
          (defun my-do-compose-stuff ()
            "My settings for message composition."
            (set-fill-column 80)))

(setq mu4e-get-mail-command (format "INSIDE_EMACS=%s mbsync -a" emacs-version))

(setf epa-pinentry-mode 'loopback)


;; Custom actions
;; -----------------------------------------------

;; (defun abdo-mu4e-retag-message (msg)
;;   (let ((retag (read-string "Tags: "))
;;         (path (mu4e-message-field msg :path))
;;         (maildir (mu4e-message-field msg :maildir)))
;;     (when retag
;;       (let ((retaglist (split-string-and-unquote retag)))
;;         (apply 'call-process "mutag" nil 0 nil "-p" abdo-mu4e-mutag-profile "-t" path "-T" "--" retaglist)
;;         (message (concat "tagging: " (mapconcat 'identity retaglist ", ")))
;;         (mu4e~proc-add path maildir)
;;         ))))

;; (defun abdo-mu4e-autotag-message (msg)
;;   (let ((path (mu4e-message-field msg :path))
;;         (maildir (mu4e-message-field msg :maildir)))
;;     (apply 'call-process "mutag" nil 0 nil "-p" abdo-mu4e-mutag-profile "-t" path "-A")
;;     (mu4e~proc-index path mu4e-user-mail-address-list)
;;     (mu4e~proc-add path maildir)))

;; -----------------------------------------------


;;; mu4e private config
(load-library "init-mail-priv")
