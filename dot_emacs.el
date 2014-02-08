;; Load path
(add-to-list 'load-path "~/.emacs.d/elisp/")

;; CFEngine
(autoload 'cfengine-mode "cfengine" "cfengine editing" t)
(add-to-list 'auto-mode-alist '("\\.cf\\'" . cfengine3-mode))

;; Load configurations 
(setq custom-file "~/.emacs-custom.el")
(setq latex-config-file "~/.emacs.d/latex.el")
(load custom-file)
(load latex-config-file)

;; Impresjs from org-mode
(require 'org-impress-js)

;; autocomplete 
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/ac-dict")
(ac-config-default)

;; CSS
(autoload 'css-mode "css-mode" "Mode for editing CSS files" t)

(setq auto-mode-alist
       (append '(("\\.css$" . css-mode))
               auto-mode-alist))

;; Perl
(mapc
     (lambda (pair)
       (if (eq (cdr pair) 'perl-mode)
           (setcdr pair 'cperl-mode)))
     (append auto-mode-alist interpreter-mode-alist))

(custom-set-faces
 '(cperl-array-face ((t (:weight normal))))
 '(cperl-hash-face ((t (:weight normal))))
)


;; Markdown GitHub Flavored
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
;;;

(put 'downcase-region 'disabled nil)
