;; theme
(load-theme 'dichromacy t)

(custom-set-variables
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (dichromacy)))
 '(inhibit-startup-screen t)
 '(js2-auto-indent-p t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(keyboard-coding-system (quote utf-8-unix))
 '(tool-bar-mode nil)
 '(woman-locale "es_ES.UTF-8"))

;; Turn on auto fill mode automatically in al modes 
(auto-fill-mode 1)
(setq-default fill-column 78)

;; emacs backups
(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;; org-mode
;; keys 
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(custom-set-faces
 '(cperl-array-face ((t (:weight normal))) t)
 '(cperl-hash-face ((t (:weight normal))) t))

;; Personal configuration here - personalconf


