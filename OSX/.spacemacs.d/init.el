;; -*- mode: emacs-lisp -*-
;; sineer's Spacemacs config
(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers/+tools/")

   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(shell-scripts
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-complete-with-key-sequence nil
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-private-snippets-directory nil)
     better-defaults
     (c-c++ :variables
            c-c++-backend 'lsp-ccls
            c-c++-adopt-subprojects t
            c-c++-enable-rtags-completion nil
            c-c++-lsp-enable-semantic-highlight 'rainbow)
     ;; calendar
     csv
     clojure
     docker
     ;; eaf
     emacs-lisp
     erc
     ;; (erlfeed :variables rmh-elfeed-org-files (list "~/XXX/feed.org" "XXX"))
     erlang
     ;; XXX (elixir :variables elixir-backend 'lsp)
     finance
     fzf
     ;;graphql
     git
     helpful
     helm
     hugo
     html
     (javascript :variables
                 javascript-backend       'lsp
                 javascript-fmt-tool      'prettier
                 javascript-lsp-linter    nil
                 javascript-repl          'nodejs
                 javascript-import-tool   'import-js
                 node-add-modules-path    t
                 js2-include-node-externs t)

     json
     latex
     (lsp :variables
          lsp-idle-delay                   0.5
          lsp-enable-indentation           nil
          lsp-enable-links                 t
          lsp-enable-folding               t
          lsp-enable-on-type-formatting    t
          lsp-enable-imenu                 t
          lsp-ui-imenu-auto-refresh        t
          lsp-ui-sideline-delay            0.05
          lsp-ui-doc-header                t
          lsp-ui-doc-include-signature     t
          lsp-ui-doc-position              'at-point
          lsp-ui-doc-alignment             'frame
          lsp-ui-doc-max-width              150
          lsp-ui-doc-max-height             13
          lsp-ui-peek-enable                t
          lsp-ui-peek-show-directory        t
          lsp-ui-peek-peek-height           20
          lsp-ui-peek-list-width            50
          ;; lsp-ui-doc-border              "orange"
          lsp-ui-doc-border                 (face-foreground 'default)
          lsp-ui-sideline-show-code-actions t
          ;;lsp-ui-imenu-refresh-delay      100
          ;;lsp-ui-imenu-window-width       128
          lsp-rust-server                   'rust-analyzer
          cargo-process-reload-on-modify    t
          elixir-backend                    'lsp)
     markdown
     (mu4e :variables
           mu4e-installation-path "/opt/homebrew/share/emacs/site-lisp/mu/mu4e/")
     multiple-cursors
     neotree
     ;;(org :variables
     ;;     org-enable-sticky-header t
     ;;     org-enable-github-support t
     ;;     org-enable-notifications t
     ;;     org-start-notification-daemon-on-startup t
     ;;     org-enable-org-journal-support t
     ;;     org-enable-hugo-support t
     ;;     org-enable-org-brain-support t
     ;;     org-enable-roam-support t
     ;;     org-enable-roam-server t
     ;;     org-enable-roam-protocol t)
     osx
     ;; parinfer
     ;; prodigy
     python
     (ranger :variables ranger-show-preview t)
     (rust :variables rust-backend 'lsp)
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     themes-megapack
     treemacs
     (typescript :variables
                 typescript-linter   'eslint
                 typescript-fmt-tool 'prettier
                 typescript-backend  'lsp
                 typescript-indent-level 2
                 web-mode-code-indent-offset 2)
     (version-control :variables version-control-global-margin t)
     w3m
     yaml
     ;; zig
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; XXX: Some of these packages might be available in layers
   dotspacemacs-additional-packages '(claude-code-ide
                                      deadgrep
                                      inf-clojure
                                      org-dashboard
                                      org-journal
                                      org-modern
                                      rustic
                                      websocket)

   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(alchemist)

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."

  (if (eq system-type 'darwin)
      (setq system-name (car (split-string system-name "\\."))))

  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5

   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update nil

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'hybrid

   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'random

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 20)
                                (projects . 7))

   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 20

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(alect-black
                         ample-zen
                         cyberpunk
                         ir-black
                         junio
                         lush
                         manoj-dark
                         reverse
                         soothe
                         wheatgrass
                         spacemacs-dark
                         organic-green
                         solarized-dark
                         tango-dark
                         monokai
                         spacemacs-light
                         solarized-light
                         leuven
                         zenburn)

   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t

   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' to obtain fullscreen
   ;; without external boxes. Also disables the internal border. (default nil)
   dotspacemacs-undecorated-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 95
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 80
   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling nil
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'current


   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server t

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil


   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")

   ;; The backend used for undo/redo functionality. Possible values are
   ;; `undo-fu', `undo-redo' and `undo-tree' see also `evil-undo-system'.
   ;; Note that saved undo history does not get transferred when changing
   ;; your undo system. The default is currently `undo-fu' as `undo-tree'
   ;; is not maintained anymore and `undo-redo' is very basic."
   dotspacemacs-undo-system 'undo-fu

   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all',
   ;; `trailing', `changed' or `nil'. Default is `changed' (cleanup whitespace
   ;; on changed lines) (default 'changed)
   dotspacemacs-whitespace-cleanup 'changed


   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Color highlight trailing whitespace in all prog-mode and text-mode derived
   ;; modes such as c++-mode, python-mode, emacs-lisp, html-mode, rst-mode etc.
   ;; (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; The variable `global-spacemacs-whitespace-cleanup-modes' controls
   ;; which major modes have whitespace cleanup enabled or disabled
   ;; by default.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile t
   ))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
  )

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost any
user code here.  The exception is org related code, which should be placed in
`dotspacemacs/user-config'."

  (setq default-directory "~/"))


(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."

  ;; NO LOCK FILE
  (setq create-lockfiles nil)

  ;; Do not save .~undo-tree~
  (setq undo-tree-auto-save-history nil)


  ;; SCROLLING
  ;; XXX: Clean up commented scrolling code - decide which approach to use
  ;; move minimum when cursor exits view, instead of recentering
  ;; (setq scroll-conservatively 101)

  ;; (spacemacs/enable-smooth-scrolling)
  ;; (use-package smooth-scroll
  ;;   :config
  ;;   (smooth-scroll-mode 1)
  ;;   (setq smooth-scroll/vscroll-step-size 5))

  ;; (setq mouse-wheel-scroll-amount '(3 ((shift) . 5) ((control) . nil)))

  ;; EMACS-29 BUILT-IN pixel-scroll-precision-mode ROCKS.
  (pixel-scroll-precision-mode)
  (setq pixel-scroll-precision-large-scroll-height 40.0)
  (setq pixel-scroll-precision-interpolation-factor 30)


  (setq mouse-wheel-progressive-speed nil)
  (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse


  (scroll-bar-mode)

  (global-company-mode)


  ;; TRANSPARENCY
  (spacemacs/enable-transparency)
  (add-hook 'after-make-frame-functions 'spacemacs/enable-transparency)


  ;; NO "SMART" PARENS PLEASE
  (spacemacs/toggle-smartparens-globally-off)


  ;; C-STYLE
  (c-add-style "jbsd"
               '("bsd"
                 (c-backspace-function . delete-backward-char)
                 (c-syntactic-indentation-in-macros . nil)
                 (c-tab-always-indent . t)
                 ;; (c-hanging-braces-alist
                 ;;  (block-close . c-snug-do-while))
                 (tab-width . 4)
                 (c-basic-offset . 4)
                 (indent-tabs-mode . nil)
                 (c-offsets-alist
                  ;; (arglist-cont-nonempty . *)
                  ;; (statement-cont . *)
                  (inextern-lang . 0))))

  (setq-default c-default-style "jbsd")


  (add-to-list 'load-path "~/.spacemacs.d/")
  (add-to-list 'load-path "~/.emacs.d/private")

  (setq ledger-post-amount-alignment-column 68)
  (add-to-list 'auto-mode-alist '("\\.lgr$" . ledger-mode))


  (load-library "init-keys")
  (load-library "init-mail")
  (load-library "init-org-mode")
  (load-library "init-w3m")
  (load-library "init-claude")
  ;; XXX (load-library "init-hugo")
  ;; XXX (load-library "init-equake")

  ;; LSP-UI
  (use-package lsp-ui
    :commands lsp-ui-mode
    :config
    (setq lsp-ui-doc-enable nil)
    (setq lsp-ui-sideline-delay 0.05))

  ;; XXX ELIXIR-LS
  ;; (use-package lsp-mode
  ;;   :commands lsp
  ;;   :ensure t
  ;;   :diminish lsp-mode
  ;;   :hook
  ;;   (elixir-mode . lsp)
  ;;   :init
  ;;   (add-to-list 'exec-path "~/g/ex/elixir-ls/release"))

  ;; RUSTic
  (use-package rustic
    :ensure
    :bind (:map rustic-mode-map
                ("M-j" . lsp-ui-imenu)
                ("M-?" . lsp-find-references)
                ("C-c C-c l" . flycheck-list-errors)
                ("C-c C-c a" . lsp-execute-code-action)
                ("C-c C-c r" . lsp-rename)
                ("C-c C-c q" . lsp-workspace-restart)
                ("C-c C-c Q" . lsp-workspace-shutdown)
                ("C-c C-c s" . lsp-rust-analyzer-status))
    :config
    ;; uncomment for less flashiness
    ;; (setq lsp-eldoc-hook nil)
    ;; (setq lsp-enable-symbol-highlighting nil)
    ;; (setq lsp-signature-auto-activate nil)

    ;; comment to disable rustfmt on save
    (setq rustic-format-on-save t)
    (add-hook 'rustic-mode-hook 'rk/rustic-mode-hook))

  (defun rk/rustic-mode-hook ()
    ;; so that run C-c C-c C-r works without having to confirm, but don't try to
    ;; save rust buffers that are not file visiting. Once
    ;; https://github.com/brotzeit/rustic/issues/253 has been resolved this should
    ;; no longer be necessary.
    (when buffer-file-name
      (setq-local buffer-save-without-query t)))



  (delete-selection-mode 1)

  ;; http://emacs.stackexchange.com/questions/14940/emacs-doesnt-paste-in-evils-visual-mode-with-every-os-clipboard/15054#15054
  (fset 'evil-visual-update-x-selection 'ignore)

  ;; XXX: UTF-8 settings commented - verify if needed
  ;; (prefer-coding-system 'utf-8)
  ;; (set-default-coding-systems 'utf-8)
  ;; (set-terminal-coding-system 'utf-8)
  ;; (set-keyboard-coding-system 'utf-8)
  ;; (set-language-environment "UTF-8")
  ;; (setq default-process-coding-system '(utf-8 . utf-8))

  (setq clojure-enable-fancify-symbols t)


  ;; XXX: Mac three-button mouse emulation - uncomment if needed
  ;;(setq mac-emulate-three-button-mouse t)

  (defun middle-click (click)
    (interactive "e")
    (let ((event (event-start click))
          (prefix-arg current-prefix-arg))
      (call-interactively (key-binding (vector (list 'mouse-2 event)) t))))

  (global-set-key (kbd "<S-mouse-3>") 'middle-click)


  ;; XXX
  ;;  (use-package flycheck :ensure)
  ;;  (add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))
  ;;  (eval-after-load "flyspell"
  ;;    '(progn
  ;;       (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
  ;;       (define-key flyspell-mouse-map [mouse-3] #'undefined)))

  ;;  (define-key key-translation-map (kbd "<S-mouse-3>") (kbd "<mouse-2>"))

  ;;  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  ;;(add-hook 'c++-mode-hook
  ;;          (lambda ()
  ;;            (flyspell-prog-mode)))


  ;; https://www.dr-qubit.org/Evil_cursor_model.html
  (setq evil-move-cursor-back nil)
  (setq evil-move-beyond-eol t)
  (setq evil-highlight-closing-paren-at-point-states nil)


  (defun delete-line-no-kill ()
    (interactive)
    (delete-region
     (point)
     (save-excursion (move-end-of-line 1) (point)))
    (delete-char 1))


  ;; XXX: global-diff-hl-mode - decide if needed
  ;;  (global-diff-hl-mode)


  ;;; SPACELINE
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-buffer-size-off)

  )





;; XXX: OLD CUSTOM VARIABLES - Should migrate to dotspacemacs/emacs-custom-settings
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(evil-want-Y-yank-to-eol t)
 '(fci-rule-color "gray80" t)
 '(highlight-symbol-colors
   (quote
    ("#EFFF00" "#73CD4F" "#83DDFF" "MediumPurple1" "#66CDAA" "DarkOrange" "HotPink1" "#809FFF" "#ADFF2F")))
 '(hl-paren-background-colors
   (quote
    ("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC" "#CC99FF" "#9999FF" "#99CCFF" "#99FFCC" "#7FFF00")))
 '(hl-paren-colors (quote ("#326B6B")))
 '(menu-bar-mode nil)
 '(org-src-block-faces (quote (("emacs-lisp" (:background "#F0FFF0")))))
 '(package-selected-packages
   (quote
    (powerline org-mime parent-mode projectile flx smartparens iedit anzu evil goto-chg undo-tree f dash hydra s highlight sesman spinner pkg-info epl bind-map bind-key packed helm avy helm-core async popup yaml-mode xterm-color web-mode web-beautify tagedit smeargle slim-mode shell-pop scss-mode sass-mode reveal-in-osx-finder ranger pug-mode prodigy pbcopy parinfer osx-trash osx-dictionary orgit org-projectile org-category-capture org-present org-pomodoro org-journal org-download org-dashboard multi-term ht alert log4e gntp mmm-mode markdown-toc markdown-mode magit-gitflow livid-mode skewer-mode simple-httpd less-css-mode ledger-mode launchctl js2-refactor js2-mode js-doc htmlize helm-w3m w3m helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flyspell-correct-helm flyspell-correct evil-magit magit git-commit ghub let-alist with-editor eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-terminal-notifier erc-social-graph erc-image erc-hl-nicks emmet-mode dockerfile-mode docker json-mode tablist magit-popup docker-tramp json-snatcher json-reformat diff-hl company-web web-completion-data company-tern dash-functional tern company-statistics company-quickhelp pos-tip company-auctex company coffee-mode clojure-snippets clj-refactor inflections edn multiple-cursors paredit peg cider-eval-sexp-fu cider seq queue clojure-mode auto-yasnippet yasnippet auto-dictionary auctex auto-complete organic-green-theme ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu erlang elisp-slime-nav dumb-jump diminish define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(tool-bar-mode nil))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(ansi-color-names-vector
     ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
   '(blink-cursor-mode nil)
   '(claude-code-ide-cli-extra-flags "")
   '(claude-code-ide-cli-path "claude")
   '(claude-code-ide-focus-claude-after-ediff t)
   '(claude-code-ide-focus-on-open t)
   '(claude-code-ide-show-claude-window-in-ediff t)
   '(claude-code-ide-system-prompt nil)
   '(claude-code-ide-use-ide-diff t)
   '(claude-code-ide-use-side-window t)
   '(claude-code-ide-window-height 20)
   '(claude-code-ide-window-side 'right)
   '(claude-code-ide-window-width 90)
   '(column-number-mode t)
   '(erc-nick "sineer")
   '(erc-nickserv-alist
     '((freenode "Nickserv's nick!user@host: NickServ!NickServ@services."
                 "\2/msg\\s-NickServ\\s-identify\\s-<password>\2" "NickServ"
                 "identify" nil nil "You are now identified for \2\\S-+\2\\.")))
   '(evil-want-Y-yank-to-eol t)
   '(fci-rule-color "gray80" t)
   '(global-display-line-numbers-mode t)
   '(highlight-parentheses-background-colors
     '("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC" "#CC99FF" "#9999FF"
       "#99CCFF" "#99FFCC" "#7FFF00"))
   '(highlight-parentheses-colors '("#326B6B"))
   '(highlight-symbol-colors
     '("#EFFF00" "#73CD4F" "#83DDFF" "MediumPurple1" "#66CDAA" "DarkOrange"
       "HotPink1" "#809FFF" "#ADFF2F"))
   '(hl-paren-background-colors
     '("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC" "#CC99FF" "#9999FF"
       "#99CCFF" "#99FFCC" "#7FFF00"))
   '(hl-paren-colors '("#326B6B"))
   '(lsp-file-watch-ignored-directories
     '("[/\\\\]\\.git\\'" "[/\\\\]\\.github\\'" "[/\\\\]\\.circleci\\'"
       "[/\\\\]\\.hg\\'" "[/\\\\]\\.bzr\\'" "[/\\\\]_darcs\\'" "[/\\\\]\\.svn\\'"
       "[/\\\\]_FOSSIL_\\'" "[/\\\\]\\.idea\\'" "[/\\\\]\\.ensime_cache\\'"
       "[/\\\\]\\.eunit\\'" "[/\\\\]node_modules" "[/\\\\]\\.yarn\\'"
       "[/\\\\]\\.fslckout\\'" "[/\\\\]\\.tox\\'" "[/\\\\]dist\\'"
       "[/\\\\]dist-newstyle\\'" "[/\\\\]\\.stack-work\\'" "[/\\\\]\\.bloop\\'"
       "[/\\\\]\\.metals\\'" "[/\\\\]target\\'" "[/\\\\]\\.ccls-cache\\'"
       "[/\\\\]\\.vscode\\'" "[/\\\\]\\.venv\\'" "[/\\\\]\\.mypy_cache\\'"
       "[/\\\\]\\.deps\\'" "[/\\\\]build-aux\\'" "[/\\\\]autom4te.cache\\'"
       "[/\\\\]\\.reference\\'" "[/\\\\]\\.lsp\\'" "[/\\\\]\\.clj-kondo\\'"
       "[/\\\\]\\.shadow-cljs\\'" "[/\\\\]\\.babel_cache\\'"
       "[/\\\\]\\.cpcache\\'" "[/\\\\]\\checkouts\\'" "[/\\\\]\\.m2\\'"
       "[/\\\\]bin/Debug\\'" "[/\\\\]obj\\'" "[/\\\\]_opam\\'" "[/\\\\]_build\\'"
       "[/\\\\]\\.elixir_ls\\'" "[/\\\\]\\.direnv\\'" "[/\\\\]\\build\\'"))
   '(menu-bar-mode nil)
   '(org-src-block-faces '(("emacs-lisp" (:background "#F0FFF0"))))
   '(package-selected-packages
     '(ace-jump-helm-line ace-link ace-window adaptive-wrap aggressive-indent alert
                          anzu async auctex auto-compile auto-complete
                          auto-dictionary auto-highlight-symbol auto-yasnippet avy
                          bind-key bind-map cider cider-eval-sexp-fu
                          claude-code-ide clean-aindent-mode clj-refactor
                          clojure-mode clojure-snippets coffee-mode
                          column-enforce-mode company company-auctex
                          company-quickhelp company-statistics company-tern
                          company-web dash dash-functional define-word diff-hl
                          diminish docker docker-tramp dockerfile-mode dumb-jump
                          edn elisp-slime-nav emmet-mode epl erc-hl-nicks
                          erc-image erc-social-graph erc-terminal-notifier
                          erc-view-log erc-yt erlang esh-help eshell-prompt-extras
                          eshell-z eval-sexp-fu evil evil-anzu evil-args
                          evil-ediff evil-escape evil-exchange evil-iedit-state
                          evil-indent-plus evil-lisp-state evil-magit evil-matchit
                          evil-mc evil-nerd-commenter evil-numbers
                          evil-search-highlight-persist evil-surround evil-tutor
                          evil-unimpaired evil-visual-mark-mode evil-visualstar
                          exec-path-from-shell expand-region eyebrowse f
                          fancy-battery fill-column-indicator flx flx-ido
                          flyspell-correct flyspell-correct-helm fringe-helper
                          fuzzy gh-md ghub git-commit git-gutter git-gutter+
                          git-gutter-fringe git-gutter-fringe+ git-link
                          git-messenger git-timemachine gitattributes-mode
                          gitconfig-mode gitignore-mode gntp gnuplot golden-ratio
                          google-translate goto-chg haml-mode helm helm-ag
                          helm-c-yasnippet helm-company helm-core helm-css-scss
                          helm-descbinds helm-flx helm-gitignore helm-make
                          helm-mode-manager helm-projectile helm-swoop helm-themes
                          helm-w3m help-fns+ hide-comnt highlight
                          highlight-indentation highlight-numbers
                          highlight-parentheses hl-todo ht htmlize hungry-delete
                          hydra iedit indent-guide inflections info+ js-doc
                          js2-mode js2-refactor json-mode json-reformat
                          json-snatcher launchctl ledger-mode less-css-mode
                          let-alist link-hint linum-relative livid-mode log4e
                          lorem-ipsum macrostep magit magit-gitflow magit-popup
                          markdown-mode markdown-toc mmm-mode move-text multi-term
                          multiple-cursors neotree open-junk-file org-bullets
                          org-category-capture org-dashboard org-download
                          org-journal org-mime org-plus-contrib org-pomodoro
                          org-present org-projectile organic-green-theme orgit
                          osx-dictionary osx-trash packed paradox paredit
                          parent-mode parinfer pbcopy pcre2el peg persp-mode
                          pkg-info popup popwin pos-tip powerline prodigy
                          projectile pug-mode queue rainbow-delimiters ranger
                          request restart-emacs reveal-in-osx-finder s sass-mode
                          scss-mode seq sesman shell-pop simple-httpd skewer-mode
                          slim-mode smartparens smeargle spaceline spinner tablist
                          tagedit tern toc-org undo-tree use-package uuidgen
                          vi-tilde-fringe volatile-highlights w3m web-beautify
                          web-completion-data web-mode which-key winum with-editor
                          ws-butler xterm-color yaml-mode yasnippet))
   '(package-vc-selected-packages
     '((claude-code-ide :url "https://github.com/manzaltu/claude-code-ide.el")))
   '(paradox-github-token t)
   '(safe-local-variable-values
     '((cider-ns-refresh-after-fn . "development/go")
       (cider-ns-refresh-before-fn . "development/stop")
       (eval put-clojure-indent :require 0) (javascript-backend . tide)
       (javascript-backend . tern) (javascript-backend . lsp)))
   '(show-paren-mode nil)
   '(tool-bar-mode nil)
   '(warning-suppress-log-types '((comp))))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:family "Fira Mono for Powerline" :foundry "nil" :slant normal :weight regular :height 180 :width normal))))
   '(highlight-parentheses-highlight ((nil (:weight ultra-bold))) t))
  )
