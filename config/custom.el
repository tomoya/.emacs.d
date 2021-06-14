;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Start auto generated configuration by customize
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(affe-find-command "fd --color=never --full-path")
 '(affe-highlight-function 'orderless-highlight-matches)
 '(affe-regexp-function 'orderless-pattern-compiler)
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(auto-revert-interval 1)
 '(company-auto-commit 'ignore)
 '(company-box-doc-delay 0.3)
 '(company-box-icons-alist 'company-box-icons-all-the-icons)
 '(company-dabbrev-code-ignore-case t)
 '(company-dabbrev-code-modes
   '(prog-mode batch-file-mode csharp-mode css-mode erlang-mode haskell-mode jde-mode lua-mode python-mode typescript-mode))
 '(company-emoji-insert-unicode nil)
 '(company-flx-mode t)
 '(company-global-modes t)
 '(company-idle-delay 0)
 '(company-lsp-cache-candidates 'auto)
 '(company-minimum-prefix-length 2)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-idle-delay 0.1)
 '(company-tooltip-limit 20)
 '(completion-styles '(orderless flex partial-completion))
 '(consult-find-command "fd --color=never --full-path ARG OPTS")
 '(create-lockfiles nil)
 '(css-indent-offset 2)
 '(cursor-in-non-selected-windows nil)
 '(custom-safe-themes
   '("88049c35e4a6cedd4437ff6b093230b687d8a1fb65408ef17bfcf9b7338734f6" "7803ff416cf090613afd3b4c3de362e64063603522d4974bcae8cfa53cf1fd1b" "bb5a253b1e359db941284cc74750ecf38aa93878b208919fc0f2199daaef491e" "d90fe08e88654af93970f730a686b4fb936bad4e4b3b86ae3ce66388585ae649" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(delete-selection-mode t)
 '(describe-char-unidata-list
   '(name old-name general-category canonical-combining-class bidi-class decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment uppercase lowercase titlecase))
 '(diff-hl-flydiff-mode t)
 '(diff-hl-margin-mode nil)
 '(direnv-mode t nil (direnv))
 '(easy-hugo-basedir "/Users/tomoya/src/github.com/tomoya/blog.tomoya.dev")
 '(easy-hugo-root "/")
 '(easy-hugo-url "")
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(find-file-visit-truename nil)
 '(flycheck-posframe-error-prefix "E: ")
 '(flycheck-posframe-warning-prefix "W: ")
 '(font-lock-maximum-decoration nil)
 '(font-lock-maximum-size nil)
 '(frame-tabs-filter-function 'my-frame-tabs-default-filter)
 '(frame-tabs-mode nil)
 '(frame-title-format nil t)
 '(fringe-mode '(nil . 0) nil (fringe))
 '(gc-cons-threshold 100000000)
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-diff-hl-mode t)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(global-tree-sitter-mode t)
 '(global-whitespace-mode t)
 '(helm-for-files-preferred-list
   '(helm-source-buffers-list helm-source-recentf helm-source-projectile-files-list helm-source-projectile-projects helm-source-files-in-current-dir))
 '(helm-split-window-preferred-function 'split-window-sensibly)
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX" . "#dc752f")
     ("XXXX" . "#dc752f")
     ("???" . "#dc752f")))
 '(indent-tabs-mode nil)
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(initial-frame-alist
   '((width . 238)
     (height . 72)
     (top . 0)
     (left . 0)
     (left-fringe . 0)))
 '(initial-scratch-message nil)
 '(js-indent-level 2)
 '(lsp-headerline-breadcrumb-enable nil)
 '(lsp-print-performance t)
 '(lsp-server-install-dir
   (expand-file-name "lsp"
                     (or
                      (when-let
                          (xdg-cache-home-dir
                           (getenv "XDG_CACHE_HOME"))
                        (concat xdg-cache-home-dir "/emacs"))
                      (locate-user-emacs-file ".cache"))) t)
 '(lsp-ui-sideline-show-hover t)
 '(markdown-command "marked")
 '(menu-bar-mode nil)
 '(mouse-wheel-flip-direction t)
 '(mouse-wheel-tilt-scroll t)
 '(native-comp-async-report-warnings-errors nil)
 '(neo-autorefresh t)
 '(neo-confirm-delete-directory-recursively 'off-p)
 '(neo-confirm-kill-buffers-for-files-in-directory 'off-p)
 '(neo-default-system-application "open")
 '(neo-hidden-regexp-list
   '("\\.pyc$" "~$" "^#.*#$" "\\.elc$" "\\.o$" "\\.git$" "\\.DS_Store$"))
 '(neo-keymap-style 'concise)
 '(neo-show-slash-for-folder nil)
 '(neo-theme 'icons)
 '(neo-toggle-window-keep-p t)
 '(neo-vc-integration '(face))
 '(package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-native-compile t)
 '(package-selected-packages
   '(no-littering consult consult-ghq consult-lsp embark-consult vertico marginalia orderless affe tide elisp-benchmarks multi-term vterm ligature helm-c-moccur color-moccur tree-sitter tree-sitter-langs forge github-review string-inflection exec-path-from-shell projectile-ripgrep rg json-mode terraform-mode dockerfile-mode copy-as-format git-link csv-mode quickrun zone-nyan darktooth-theme darkroom company-tabnine yaml-mode php-mode cyberpunk-2019-theme flycheck-posframe rspec-mode session fira-code-mode pdf-tools company-box frame-tabs all-the-icons neotree flycheck-package easy-hugo htmlize markdown-preview-mode auto-fix company-emoji company-lsp lsp-ui lsp-mode web-mode direnv darkburn-theme undo-tree markdown-mode smartparens typescript-mode ddskk company-flx company helm-projectile projectile magit helm diff-hl spacemacs-theme))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(project-vc-ignores '("node_modules" ".git" "tmp" "dist" "coverage"))
 '(projectile-enable-caching t)
 '(projectile-globally-ignored-directories
   '(".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "node_modules" "__snapshots__"))
 '(projectile-mode t nil (projectile))
 '(recentf-max-saved-items 100000)
 '(recentf-mode t)
 '(register-preview-delay 0)
 '(ring-bell-function 'ignore)
 '(ruby-insert-encoding-magic-comment nil)
 '(safe-local-variable-values '((lsp-disabled-clients ts-ls jsts-ls)))
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(session-initialize '(session places))
 '(session-save-file (no-littering-expand-var-file-name ".session"))
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(skk-byte-compile-init-file t)
 '(skk-user-directory (locate-user-emacs-file "ddskk"))
 '(smartparens-global-mode t)
 '(split-height-threshold nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(truncate-partial-width-windows nil)
 '(typescript-indent-level 2)
 '(vertico-count 20)
 '(vertico-cycle t)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-comment-interpolation t)
 '(web-mode-enable-current-column-highlight t)
 '(web-mode-enable-current-element-highlight t)
 '(web-mode-markup-indent-offset 2)
 '(whitespace-display-mappings
   '((space-mark 12288
                 [9633])
     (newline-mark 10
                   [182 10])
     (tab-mark 9
               [187 9]
               [92 9])))
 '(whitespace-space-regexp "\\(　+\\)")
 '(whitespace-style
   '(face trailing tabs spaces newline empty indentation space-after-tab space-before-tab space-mark tab-mark))
 '(window-divider-default-places 'right-only)
 '(window-divider-default-right-width 16)
 '(x-underline-at-descent-line t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(frame-tabs-buffer-tab ((t (:inherit frame-tabs-face :foreground "gray60" :box (:line-width 5 :color "#212326")))))
 '(frame-tabs-face ((t (:background "#212326" :foreground "gray80"))))
 '(frame-tabs-higlight-tab ((t (:inherit frame-tabs-buffer-tab :background "#3d4147" :box (:line-width 5 :color "#3d4147")))))
 '(frame-tabs-selected-tab ((t (:inherit frame-tabs-buffer-tab :background "#292b2e" :foreground "white" :box (:line-width 5 :color "#292b2e")))))
 '(whitespace-newline ((t (:foreground "gray25")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End customize configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
