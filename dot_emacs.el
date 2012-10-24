;; CFEngine
(autoload 'cfengine-mode "cfengine" "cfengine editing" t)
(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'auto-mode-alist '("\\.cf\\'" . cfengine-mode))


;; org-mode exporter latex
(require 'org-latex)
(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil))

(add-to-list 'org-export-latex-classes
          '("koma-book"
             "\\documentclass{scrbook}
	     \\usepackage[spanish]{babel}

	     \\usepackage{geometry}
	     \\usepackage{lastpage}
	     \\geometry{	
	      headsep=12mm	
	      }
 	     \\usepackage{graphicx}
	     \\usepackage[ilines, komastyle]{scrpage2}
	     \\pagestyle{scrheadings}	     
	     \\clearscrheadfoot
	     \\ihead[ 
	     	      \\includegraphics{/tmp/covetel_pdf.png} 
		      ]{
		      \\includegraphics{/tmp/covetel_pdf.png}
		      }
	     \\cfoot[ \\pagemark/\\pageref{LastPage} ]{ \\pagemark/\\pageref{LastPage} }"
	     
             ("\\chapter{%s}" . "\\chapter{%s}")
	     ("\\section{%s}" . "\\section*{%s}")
             ("\\subsection{%s}" . "\\subsection*{%s}")
             ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
             ("\\paragraph{%s}" . "\\paragraph*{%s}")
             ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-export-latex-classes
          '("koma-book-walter"
             "\\documentclass{scrbook}
	     \\usepackage[spanish]{babel}

	     \\usepackage{geometry}
	     \\usepackage{lastpage}
	     \\geometry{	
	      headsep=12mm	
	      }
 	     \\usepackage{graphicx}
	     \\usepackage[ilines, komastyle]{scrpage2}
	     \\pagestyle{scrheadings}	     
	     \\clearscrheadfoot
	     \\ihead[ 
	     	     
		      ]{
		     
		      }
	     \\cfoot[ \\pagemark/\\pageref{LastPage} ]{ \\pagemark/\\pageref{LastPage} }"
	     
             ("\\chapter{%s}" . "\\chapter{%s}")
	     ("\\section{%s}" . "\\section*{%s}")
             ("\\subsection{%s}" . "\\subsection*{%s}")
             ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
             ("\\paragraph{%s}" . "\\paragraph*{%s}")
             ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(setq custom-file "~/.emacs-custom.el")
(load custom-file)