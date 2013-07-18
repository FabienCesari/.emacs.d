
;;load local settings if file exist
(let((local-settings "~/.emacs.d/init.local"))
(if(file-exists-p local-settings)
(load-file local-settings))
