emacs: 
	ln -s $(CURDIR)/dot_emacs.el $(HOME)/.emacs
	ln -s $(CURDIR)/dot_emacs-custom.el $(HOME)/.emacs-custom.el
	ln -s $(CURDIR)/dot_emacs.d $(HOME)/.emacs.d
	
