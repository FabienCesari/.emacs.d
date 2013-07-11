(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "~/.emacs.d/git/")
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp")
(add-to-list 'load-path "~/.emacs.d/plugins/autocomplete/")

(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)

(load "tempo")
(load "doxymacs")
(load "xml-parse")
(require 'doxymacs)
(add-hook 'c-mode-common-hook'doxymacs-mode)
(defun my-c-font-lock-doxy-html (limit)
  (while (re-search-forward "<.+?>" limit 'move)
    (let ((beg (match-beginning 0))
          (end (match-end 0)))
      (if (nth 4 (syntax-ppss beg))
          (when (nth 4 (syntax-ppss end))
            (c-put-font-lock-face beg end 'font-lock-keyword-face))
        (goto-char end))))
  nil)

(defun my-c-mode-common-hook ()
  (font-lock-add-keywords nil '((my-c-font-lock-doxy-html))))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gdb-max-frames 100)
 '(global-subword-mode t)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(tool-bar-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/autocomplete//ac-dict")
(ac-config-default)

(require 'psvn)


;;Matlab-emacs config
;; add repo to the pah.
(setq load-path (append load-path(list "~/.emacs.d/plugins/matlab-emacs")))

(autoload 'matlab-mode "matlab" "Enter MATLAB Mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive MATLAB mode." t)

;; Customization:
(setq matlab-indent-function t)	; if you want function bodies indented
(setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save
(defun my-matlab-mode-hook ()
  (setq fill-column 76))		; where auto-fill should wrap
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
(defun my-matlab-shell-mode-hook ()
  '())
(add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)

;; Turn off Matlab desktop
(setq matlab-shell-command-switches '("-nojvm"))

; change window focus with shift-arrows
;;;; (require 'windmove)
(windmove-default-keybindings)
(setq windmove-wrap-around t)

; swap windows with control-shift-arrows
(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-donw>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

(when (eq system-type 'darwin)
					; forget Command-Q to quit, use M-Q to fill-region
  (setq mac-pass-command-to-system nil) )

(setenv "PATH" "/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Applications/AudioSculpt 3.0.23i/Kernels:/opt/local/bin:/opt/local/sbin:/usr/local/share/python:/Users/cesari/include:/Users/cesari/lib:/Users/cesari/bin:/Applications/MATLAB_R2010b.app/bin")


;; global settings
(global-set-key (kbd "C-+") 'hs-toggle-hiding)

(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'espresso-mode-hook   'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

(require 'tramp)
(setq tramp-default-method "ftp")

(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)


;;; This is for GNU Emacs 22
    (defun terminal-init-screen ()
      "Terminal initialization function for screen."
      ;; Use the xterm color initialization code.
      (load "term/xterm")
      (xterm-register-default-colors)
      (tty-set-up-initial-frame-faces))

(require 'git)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/cedet-common/")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/cedet-contrib/")
;;for jde
(require 'cedet)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/elib/")

(setq jde-help-remote-file-exists-function '("beanshell"))
(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
(load "jde")

;;--------------------
;; jde

(add-to-list 'load-path "~/.emacs.d/jde-current/")
(require 'jde)
(setq jde-web-browser "firefox")
(setq jde-doc-dir "~/d/jdk-6-doc/")