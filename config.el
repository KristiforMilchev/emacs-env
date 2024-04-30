;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Kristifor Milchev"
      user-mail-address "km@airzen.io")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;
;;
(global-set-key (kbd "C-0") 'dap-ui-hide-many-windows)
(global-set-key (kbd "C-1") 'previous-window-any-frame)
(global-set-key (kbd "C-2") 'other-window)
(global-set-key (kbd "C->") 'lsp-execute-code-action)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-`") 'shell)
(global-set-key (kbd "<f9>") 'dap-breakpoint-add)
(global-set-key (kbd "<f10>") 'dap-breakpoint-delete)
(global-set-key (kbd "<f1>") 'dired-jump)
(global-set-key (kbd "<f11>") 'lsp-find-implementation)
(global-set-key (kbd "<f12>") 'lsp-find-definition)
(global-set-key (kbd "<f10>") 'dap-next)
(global-set-key (kbd "<f11>") 'dap-step-in)
(global-set-key (kbd "<f5>") 'dap-debug)
(global-set-key (kbd "<f3>") 'dap-hydra)
(global-set-key (kbd "C-f") '+default/search-buffer)
(global-set-key (kbd "C-w") 'dap-tooltip-at-point)
(global-set-key (kbd "C-S-r") 'lsp-dart-dap-flutter-hot-restart)
(global-set-key (kbd "C-S-e") 'lsp-dart-dap-flutter-hot-reload)
(global-set-key (kbd "C-S-s") 'treemacs-create-file)
(global-set-key (kbd "C-S-d") 'treemacs-create-dir)
(global-set-key (kbd "C-S-o") 'treemacs)
(global-set-key (kbd "C-S-q") 'lsp-restart-workspace)
(global-set-key (kbd "C-f") '+default/search-buffer)
(global-set-key (kbd "C-.") 'consult-find)
(global-set-key (kbd "C-S-F") 'consult-grep)
(global-set-key (kbd "C-p") 'projectile-open-projects)
(global-set-key (kbd "C-k") 'kill-current-buffer)
(global-set-key (kbd "C-b") 'ido-switch-buffer)
(global-set-key (kbd "C-d") 'lsp-rename)
(global-set-key (kbd "C-q") 'delete-window)
(global-set-key (kbd "C-SPC") '+company/complete)
(global-set-key (kbd "C-S-G") 'magit)
                                        ;(global-set-key (kbd "ESC") 'keyboard-quit)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-e") 'lsp-ui-doc-toggle)
(global-set-key (kbd "C-r") 'xref-find-definitions-other-window)
(global-set-key (kbd "C-t") 'lsp-goto-implementation)
(global-set-key (kbd "C-]") 'lsp-treemacs-errors-list)
(global-set-key (kbd "C-/") 'comment-dwim)
(global-set-key (kbd "C-S-D")  'lsp-describe-thing-at-point)
(global-set-key (kbd "C-3")  'beginning-of-line)
(global-set-key (kbd "C-4")  'end-of-line)
(global-set-key (kbd "C-6")  'string-rectangle)
(global-set-key (kbd "C-7")  'start-kbd-macro)
(global-set-key (kbd "C-8")  'call-last-kbd-macro)

(global-set-key (kbd "C-+")  'doom/increase-font-size)
(global-set-key (kbd "C--")  'doom/decrease-font-size)


                                        ;(global-set-key (kbd "C-S-<right>") 'end-of-line)
                                        ;(global-set-key (kbd "C-S-<left>") 'move-beginning-of-line)

(cua-mode)
(global-unset-key (kbd "ESC ESC ESC"))
(define-key key-translation-map (kbd "ESC") (kbd ""))

(add-hook 'after-save-hook 'lsp-dart-dap--flutter-hot-reload)
(add-hook 'before-save-hook #'lsp-organize-imports)
                                        ;(add-hook 'after-save-hook 'lsp-restart-workspace)
;;(global-set-key (kbd "C-<S-F>") '+default/search-project)
;;
(setq lsp-file-watch-threshold 2000)

(use-package! lsp-mode)
(use-package! lsp-dart
  :hook (dart-mode . lsp))
(use-package! yasnippet
  :config (yas-global-mode))
(use-package! lsp-ui)
(use-package! hover)
(use-package! yaml-mode)
(use-package!  ef-themes)


(setq read-process-output-max (* 4096 4096)) ;; 1mb
(setq gc-cons-threshold 1000000000)
(setq lsp-idle-delay 0.001)
(setq projectile-enable-caching t)
(setq projectile-indexing-method 'native)

(setq lsp-log-io nil)
(setq consult-project-root-function #'projectile-project-root)

(setq fancy-splash-image (concat doom-private-dir "Tux_Mono.svg.png"))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(after! flycheck
  (setq flycheck-display-errors-delay 0.5
        flycheck-display-errors-function #'flycheck-display-error-messages-unless-error-list))


(use-package flycheck-golangci-lint
  :ensure t
  :hook (go-mode . flycheck-golangci-lint-setup))

(defun aborn/backward-kill-word ()
  "Customize/Smart backward-kill-word."
  (interactive)
  (let* ((cp (point))
         (backword)
         (end)
         (space-pos)
         (backword-char (if (bobp)
                            ""           ;; cursor in begin of buffer
                          (buffer-substring cp (- cp 1)))))
    (if (equal (length backword-char) (string-width backword-char))
        (progn
          (save-excursion
            (setq backword (buffer-substring (point) (progn (forward-word -1) (point)))))
          (setq ab/debug backword)
          (save-excursion
            (when (and backword          ;; when backword contains space
                       (s-contains? " " backword))
              (setq space-pos (ignore-errors (search-backward " ")))))
          (save-excursion
            (let* ((pos (ignore-errors (search-backward-regexp "\n")))
                   (substr (when pos (buffer-substring pos cp))))
              (when (or (and substr (s-blank? (s-trim substr)))
                        (s-contains? "\n" backword))
                (setq end pos))))
          (if end
              (kill-region cp end)
            (if space-pos
                (kill-region cp space-pos)
              (backward-kill-word 1))))
      (kill-region cp (- cp 1)))         ;; word is non-english word
    ))

(global-set-key  [C-backspace]
                 'aborn/backward-kill-word)

(setq lsp-go-analyses '((shadow . t)
                        (simplifycompositelit . :json-false)))

;; C-Like
(dolist (mode-iter '(dart-mode))
  (font-lock-add-keywords
   mode-iter
   '(("\\([~^&\|!<>=,.\\+*/%-]\\)" 0 'font-lock-operator-face keep)))
  (font-lock-add-keywords
   mode-iter
   '(("\\([\]\[}{)(:;]\\)" 0 'font-lock-delimit-face keep)))
  ;; functions
  (font-lock-add-keywords
   mode-iter
   '(("\\([_a-zA-Z][_a-zA-Z0-9]*\\)\s*(" 1 'font-lock-function-name-face keep))))
(setq doom-modeline-enable-word-count nil)

(use-package dap-mode
  :ensure t)
(setq dap-debug-restart-keep-session nil)

(require 'dap-dlv-go)

(setq dap-mode 1)
(setq dap-ui-mode 1)
(setq dap-tooltip-mode 1)
(setq tooltip-mode 1)
(setq dap-ui-controls-mode 1)
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))
(setq scroll-conservatively 10)



(setq lsp-ui-doc-enable t
      lsp-ui-peek-enable t
      lsp-ui-sideline-enable t
      lsp-ui-imenu-enable t
      lsp-ui-flycheck-enable t)


(setq package-selected-packages
      '(consult
        consult-projectile
  	dap-mode
  	flycheck-projectile
  	fuzzy-finder
  	fzf
  	ivy-posframe
  	lsp-ivy
  	lsp-treemacs
  	lsp-ui
  	mark-multiple
  	multiple-cursors
  	))

(package-install-selected-packages)


(use-package go-mode
  :mode "\\.go\\'"
  :config
  (defun my/go-mode-setup ()
    "Basic Go mode setup."
    (add-hook 'before-save-hook #'lsp-format-buffer t t)
    (add-hook 'before-save-hook #'lsp-organize-imports t t))
  (add-hook 'go-mode-hook #'my/go-mode-setup))

;; Go - lsp-mode
;; Set up before-save hooks to format buffer and add/delete imports.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Start LSP Mode and YASnippet mode
(add-hook 'go-mode-hook #'lsp-deferred)
(add-hook 'go-mode-hook #'yas-minor-mode)


(global-set-key (kbd "<backtab>") 'un-indent-by-removing-4-spaces)
(defun un-indent-by-removing-4-spaces ()
  "remove 4 spaces from beginning of of line"
  (interactive)
  (save-excursion
    (save-match-data
      (beginning-of-line)
      ;; get rid of tabs at beginning of line
      (when (looking-at "^\\s-+")
        (untabify (match-beginning 0) (match-end 0)))
      (when (looking-at "^    ")
        (replace-match "")))))

(use-package company :ensure t :mode "company-mode")

(setq company-idle-delay 0)
(add-hook 'after-init-hook #'global-flycheck-mode)

(setq flycheck-golangci-lint-enable-all t)

(custom-set-variables
 '(help-at-pt-timer-delay 0.1)
 '(help-at-pt-display-when-idle '(flymake-diagnostic)))


;;enable flycheck as error checker in dart
(require 'flycheck)



;; Setup and use gcmh-mode for improved garbage collection.
(use-package gcmh
  :demand
  :hook
  (focus-out-hook . gcmh-idle-garbage-collect)

  :custom
  (gcmh-idle-delay 10)
  (gcmh-high-cons-threshold 104857600)

  :config
  (gcmh-mode +1))

(provide 'siren-core-performance)
(defun debugging-mode ()
  (interactive)
  (start-remote-delve) ;; I use Go, so need delve remote debugging server to be ready. I couldn't figure out how to replicate `dlv debug my/go/program.go` in the config templates.
  (dap-mode t)
  (dap-ui-mode t)
  (dap-tooltip-mode)
  (dap-ui-controls-mode 1)
  (dap-ui-sessions)
  (dap-ui-locals)
  (dap-ui-breakpoints)
  (dap-ui-repl)
  )

(setq auto-window-vscroll nil)
