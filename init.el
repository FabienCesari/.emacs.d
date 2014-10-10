;; init.el --  Fabien Cesari configuration file.
;; Load the org mode configuaration file to generate the actual emacs-lisp file.
;; Configure before loading org mode
(package-initialize)

;;Org mode de-activate Shift + arrow keybinding
(setq org-replace-disputed-keys t)

;;Load Org mode
(add-to-list 'load-path "~/.emacs.d/external/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/external/org-mode/contrib/lisp" t)
(require 'cl)

;;Org Babel Setup.
(setq org-babel-load-languages '((emacs-lisp . t )))
(setq org-confirm-babel-evaluate nil)

;;Org install and keylist
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org" . org-mode))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-log-done t)

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
;; End of init.el
