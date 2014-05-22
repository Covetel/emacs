backup:
	mv -v $(HOME)/.emacs $(HOME)/.emacs.backup
	mv -v $(HOME)/.emacs.d $(HOME)/.emacs.d.backup
	mv -v $(HOME)/.emacs-custom.el $(HOME)/.emacs-custom.el.backup

clean:
	rm -v -f -R $(HOME)/.emacs
	rm -v -f $(HOME)/.emacs-custom.el
	rm -v -f $(HOME)/.emacs.d

emacs:
	ln -s $(CURDIR)/dot_emacs.el $(HOME)/.emacs
	ln -s $(CURDIR)/dot_emacs-custom.el $(HOME)/.emacs-custom.el
	ln -s $(CURDIR)/dot_emacs.d $(HOME)/.emacs.d
