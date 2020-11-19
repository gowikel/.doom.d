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
      doom-font (font-spec :family "Ubuntu Mono" :size 17 :weight 'normal)
      doom-theme 'doom-one
      org-directory "~/org/"
      display-line-numbers t
      js-indent-level 4)

(pinentry-start)
