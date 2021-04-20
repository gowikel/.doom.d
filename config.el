;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
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
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(toggle-frame-fullscreen)
(getenv "HOME")

(setq user-full-name "Pedro José Piquero Plaza"
      user-mail-address "gowikel@gmail.com"
      default-directory "~/Code"
      projectile-project-search-path '("~/Code")
      projectile-enable-caching t
      projectile-indexing-method 'alien
      confirm-kill-emacs #'y-or-n-p
      epa-pinentry-mode 'loopback
      doom-font (font-spec :family "Ubuntu Mono" :weight 'normal)
      doom-theme 'doom-one
      org-directory "~/org/"
      display-line-numbers t
      doom-modeline-indent-info t
      js-indent-level 4
      js-chain-indent nil
      display-line-numbers-type 'relative)

;; On Mac OS you will need to install pinentry-mac
;; This will ask for your password when you try to sign with your GPG key
(pinentry-start)

(cua-mode t)

(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescript-tsx-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.mako?\\'" . web-mode))


;; Unmap unwanted keybindings
(map! :leader "f s" nil)
(map! :leader "c d" nil)
(map! :leader "c D" nil)
(map! :leader "c E" nil)
(map! :leader "s s" nil)

;; New Keybindinds
(map! :leader
      :desc "Comment line"
      "c l" #'comment-line)

(map! :leader
      :desc "Code references"
      "c r" #'+lookup/references)

(map! :leader
      :desc "Code definition"
      "c d" #'+lookup/definition)

(map! :leader
      :desc "Open structure"
      "o s" #'imenu-list)

(map! :leader
      :desc "Search symbol"
      "s s" #'imenu-anywhere)

(map! :n "zo" #'origami-open-node
      :n "zO" #'origami-open-node-recursively
      :n "zc" #'origami-close-node
      :n "zC" #'origami-close-node-recursively
      :n "zt" #'origami-toggle-node
      :n "zT" #'origami-toggle-all-nodes)
