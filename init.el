;;Org mode de-activate Shift + arrow keybinding
(setq org-replace-disputed-keys t)

;;load neatly organized org file!
(org-babel-load-file "~/.emacs.d/emacs_init.org")

;; Hide leading stars
(setq org-startup-indented t
      org-hide-leading-stars t)
