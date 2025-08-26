
(use-package vterm
    :ensure t
    :pin melpa
    :bind (:map vterm-mode-map ("C-y" . vterm-yank))
    :config (setq vterm-max-scrollback 100000))

(require 'eshell)
(require 'em-smart)
(add-hook 'eshell-mode-hook 'eshell-smart-initialize)
(require 'esh-module) ; require modules
(add-to-list 'eshell-modules-list 'eshell-tramp)


(add-to-list 'load-path
             "~/g/emacs/equake/")

(require 'equake)
(advice-add #'save-buffers-kill-terminal
            :before-while #'equake-kill-emacs-advice)
