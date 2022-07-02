(use-package vterm :ensure t)

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
