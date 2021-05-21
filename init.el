;; init.el --  Fabien Cesari configuration file.
;; Load the org mode configuaration file to generate the actual emacs-lisp file.
;; Configure before loading org mode
(package-initialize)

;;Org mode de-activate Shift + arrow keybinding
(setq org-replace-disputed-keys t)

(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

;;Block 
;;(require 'org-exp-blocks)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-log-done t)

;;load neatly organized org file!
(org-babel-load-file "~/.emacs.d/emacs-config.org")
;; End of init.el 

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "black" :foreground "grey"))))
 '(fringe ((t (:background "black")))))

(define-obsolete-function-alias 'string-to-int 'string-to-number "22.1")
