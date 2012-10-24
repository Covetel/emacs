;; Remember:
;; use (setq ...) to set value locally to a buffer
;; use (setq-default ...) to set value globally

;; theme
(load-theme 'dichromacy t)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(keyboard-coding-system (quote utf-8-unix))
 '(tool-bar-mode nil)
  '(woman-locale "es_ES.UTF-8"))

;;(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
; '(default ((t (:stipple nil :background "darkslategrey" :foreground "wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 122 :width normal :foundry "xos4" :family "Terminus")))))

;; Turn on auto fill mode automatically in al modes 
(auto-fill-mode 1)
(setq-default fill-column 78)

;; highlight current line minor mode
(global-hl-line-mode 1)

;; emacs backups
(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;; org-mode
;; keys 
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
