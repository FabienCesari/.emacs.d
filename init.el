;; init.el --  Fabien Cesari configuration file.
;(setq user-full-name "Fabien Cesari"
 ;     user-mail-address "fabien.cesari@gmail.com")

;; No splash screen 
;;(setq inhibit-startup-screen t)
;;Org mode de-activate Shift + arrow keybinding
(setq org-replace-disputed-keys t)

;;Load Org mode
(add-to-list 'load-path "~/.emacs.d/external/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/external/org-mode/contrib/lisp" t)
(require 'cl)

;;Org Babel Setup.
(setq org-babel-load-languages '((emacs-lisp . t )))
(setq org-confirm-babel-evaluate nil)
(require 'org-install)
(require 'org)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((sh         . t)
   (emacs-lisp . t)
   (lisp       . t)
   (gnuplot    . t)
   (R          . t)
   (dot        . t)
   (python     . t)))
(setq org-confirm-babel-evaluate nil)

;;load neatly organized org file!
(org-babel-load-file "~/.emacs.d/emacs-config.org")
