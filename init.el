;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     better-defaults
     emacs-lisp
     markdown
     syntax-checking
     auto-completion
     erlang
     elixir
     git
     dash
     html
     org
     colors
     spacemacs-layouts
     osx
     ;; vinegar
     github
     javascript
     deft
     floobits
     ruby
     semantic
     unimpaired
     (shell :variables
            shell-default-shell 'ansi-term
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     ranger
     version-control
     rcirc

     ;; TheBB's layers
     ;; https://github.com/TheBB/spacemacs-layers
     no-dots
     evil-little-word

     ;; justbur's layers
     ;; https://github.com/justbur/spacemacs-layers
     jb-lispy

     ;; Personal layers
     auto-correct
     frame-geometry
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages
   '(
     multiple-cursors
     dtrt-indent
     company-flx
     graphviz-dot-mode
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages
   '(
     )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/config ()
  (add-hook 'alchemist-mode-hook 'company-mode))
(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
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
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         solarized-light)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Inconsolatag"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
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
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
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
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native t
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all',
   ;; `trailing', `changed' or `nil'. Default is `changed' (cleanup whitespace
   ;; on changed lines) (default 'changed)
   dotspacemacs-whitespace-cleanup 'changed
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost any
user code here.  The exception is org related code, which should be placed in
`dotspacemacs/user-config'."
  ;; flycheck eslint
  (with-eval-after-load 'flycheck
    (setq flycheck-disabled-checkers
                  (append flycheck-disabled-checkers
                          '(javascript-jshint)))

    (flycheck-add-mode 'javascript-eslint 'web-mode)

    (setq flycheck-disabled-checkers
                  (append flycheck-disabled-checkers
                          '(json-jsonlist))))
  ;; Elixir
  ;; Treat _ as a word character
  (with-eval-after-load 'elixir-mode
    (modify-syntax-entry ?_ "w" elixir-mode-syntax-table))

  ;; Ruby
  ;; Treat _ as a word character
  (with-eval-after-load 'ruby-mode
    (modify-syntax-entry ?_ "w" ruby-mode-syntax-table))

  ;; Smartparens
  (setq
   sp-highlight-pair-overlay nil
   sp-highlight-wrap-overlay nil
   sp-highlight-wrap-tag-overlay nil)
  ;; Disable smartparens highlighting
  (with-eval-after-load 'smartparens
    (show-smartparens-global-mode -1))

  ;; Company
  ;; Fuzzy completion
  (with-eval-after-load 'company
    (company-flx-mode +1))
  (setq company-backends-js2-mode '((company-tern :with company-dabbrev)
                                            company-files
                                            company-dabbrev))

  ;; HTML
  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))

  ;; Monkey patch to fix indentation for attributes in jsx
  (load-file "~/.spacemacs.d/sgml-mode-patch.el")
  (require 'sgml-mode)

  ;; RCIRC
  ;;; Keep line at margin-bottom: ...
  (add-hook 'rcirc-mode-hook
            (lambda ()
              (set (make-local-variable 'scroll-conservatively) 8192)))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  (global-evil-mc-mode)

  (spacemacs|do-after-display-system-init
   (setq powerline-default-separator 'alternate))

  ;; auto-correct
  (setq abbrev-file-name "~/.spacemacs.d/abbrev_defs")

  ;; Org mode
  (with-eval-after-load 'org
    (define-key org-mode-map (kbd "M-h") 'org-metaleft)
    (define-key org-mode-map (kbd "M-j") 'org-metadown)
    (define-key org-mode-map (kbd "M-k") 'org-metaup)
    (define-key org-mode-map (kbd "M-l") 'org-metaright)
    (define-key org-mode-map (kbd "M-H") 'org-shiftmetaleft)
    (define-key org-mode-map (kbd "M-J") 'org-shiftmetadown)
    (define-key org-mode-map (kbd "M-K") 'org-shiftmetaup)
    (define-key org-mode-map (kbd "M-L") 'org-shiftmetaright))

  (setq
   ;; Use bash because it's faster
   shell-file-name "/bin/bash"

   ;; Enable sudo:server:
   tramp-default-proxies-alist (quote ((".*" "\\`root\\'" "/ssh:%h:")))

   ;; Spaceline
   spaceline-minor-modes-p nil

   ;; Evil
   evil-shift-round nil

   ;; File name completion
   read-file-name-completion-ignore-case t
   read-buffer-completion-ignore-case t

   ;; Miscellaneous
   vc-follow-symlinks t
   require-final-newline t

   ;; magit
   magit-push-always-verify nil
   magit-popup-show-common-commands nil
   magit-auto-revert-mode t

   ;; Shell-script mode
   sh-basic-offset 2

   ;; js2-mode
   js2-mode-show-parse-errors nil
   js2-mode-show-strict-warnings nil
   js2-basic-offset 2
   js2-strict-trailing-comma-warning nil
   js2-strict-missing-semi-warning nil
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2

   ;; dtrt-indent-mode
   dtrt-indent-mode t

   ;; deft
   deft-extensions '("org" "txt")
   deft-org-mode-title-prefix t
   deft-use-filename-as-title nil
   deft-use-filter-string-for-filename t
   deft-directory "~/Dropbox (Substantial)/Notes"
   deft-auto-save-interval 5.0
   org-agenda-files '("~/Dropbox (Substantial)/Notes"))

  ;; Profiler bindings
  (spacemacs/set-leader-keys "ops" 'profiler-start)
  (spacemacs/set-leader-keys "opr" 'profiler-report)
  (spacemacs/set-leader-keys "opt" 'profiler-stop)
  (spacemacs/set-leader-keys "oper" 'elp-results)

  ;; make j & k behave as g j & g k:
  (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
  (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

  ;; Use more simple */# so we don't drop into symbol-highlight mode
  (define-key evil-normal-state-map (kbd "*") 'ahs-forward)
  (define-key evil-normal-state-map (kbd "#") 'ahs-backward)

  ;; Use C-j in place of C-x
  (define-key key-translation-map "\C-j" "\C-x")
  (global-set-key (kbd "<s-return>") 'spacemacs/toggle-fullscreen-frame)

  ;; Javascript
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-jsx-mode))

  (defun set-jsx-indentation ()
    (setq-local sgml-basic-offset js2-basic-offset))
  (add-hook 'js2-jsx-mode-hook #'set-jsx-indentation)

  ;; Word wrap in text buffers
  (add-hook 'text-mode-hook 'auto-fill-mode)

  ;; Magit
  ;; Use C-n/C-p to navigate sections
  (with-eval-after-load 'magit
    (evil-define-key 'motion magit-mode-map (kbd "C-n") 'magit-section-forward-sibling)
    (evil-define-key 'motion magit-mode-map (kbd "C-p") 'magit-section-backward-sibling))

  ;; Start in insert mode
  (add-hook 'git-commit-mode-hook 'evil-insert-state)

  ;; Enable midnight-mode to clean old buffers every day
  '(midnight-mode t nil (midnight))

  ;; load private settings
  (when (file-exists-p "~/.emacs-private.el")
    (load-file "~/.emacs-private.el"))
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(max-specpdl-size 2000))
