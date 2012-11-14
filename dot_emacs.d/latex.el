;; org-mode exporter latex
(require 'org-latex)
(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil))

;; Activate RefTex, cross-reference, bibliography and glossary.
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(org-babel-do-load-languages 
 'org-babel-load-languages
 '((latex . t)))

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
