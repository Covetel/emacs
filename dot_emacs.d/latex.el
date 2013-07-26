;; PDFs visited in Org-mode are opened in Evince (and not in the default choice)
(eval-after-load "org"
  '(progn
     ;; Change .pdf association directly within the alist
     (setcdr (assoc "\\.pdf\\'" org-file-apps) "evince %s")))

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
          '("covetel"
             "\\documentclass{scrbook}
	     \\usepackage[spanish]{babel}

	     \\usepackage{geometry}
	     \\usepackage{lastpage}

	     \\geometry{	
	      headsep=12mm	
	      }
 	     \\usepackage{graphicx}

             \\usepackage[usenames,dvipsnames]{color}
             \\usepackage{titlesec}
           
%% Makeover covetel 
  
             \\usepackage{xcolor}
             \\definecolor{covetelred}{HTML}{b70000}
             \\usepackage{lmodern}
             \\renewcommand*{\\familydefault}{\\sfdefault}

         
             \\titleformat{\\chapter}
             {\\color{covetelred}\\Huge\\bfseries}
             {\\color{covetelred}\\Huge\\bfseries\\thechapter}{1em}{}
             
             \\titleformat{\\section}
             {\\color{covetelred}\\LARGE\\bfseries}
             {\\color{covetelred}\\LARGE\\bfseries\\thesection}{1em}{}
             

             \\titleformat{\\subsection}
             {\\color{covetelred}\\Large\\bfseries}
             {\\color{covetelred}\\Large\\bfseries\\thesubsection}{1em}{}


%% end makeover 

	     \\usepackage[ilines, komastyle]{scrpage2}
	     \\pagestyle{scrheadings}	     
	     \\clearscrheadfoot
	     \\ihead[ 
	     	      \\includegraphics{/usr/share/covetel-doc/imgs/covetel_pdf} 
		      ]{
		      \\includegraphics{/usr/share/covetel-doc/imgs/covetel_pdf}
		      }
	     \\cfoot[ \\pagemark/\\pageref{LastPage} ]{ \\pagemark/\\pageref{LastPage} }"
	     
             ("\\chapter{%s}" . "\\chapter{%s}")
	     ("\\section{%s}" . "\\section*{%s}")
             ("\\subsection{%s}" . "\\subsection*{%s}")
             ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
             ("\\paragraph{%s}" . "\\paragraph*{%s}")
             ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


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
	     	      \\includegraphics{/usr/share/covetel-doc/imgs/covetel_pdf} 
		      ]{
		      \\includegraphics{/usr/share/covetel-doc/imgs/covetel_pdf}
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

(add-to-list 'org-export-latex-classes
    '("cantv"
        "\\documentclass{scrbook}
	    \\usepackage[spanish]{babel}

	    \\usepackage{geometry}
	    \\usepackage{lastpage}

	    \\geometry{	
	        headsep=12mm	
	    }
 	    \\usepackage{graphicx}

            \\usepackage[usenames,dvipsnames]{color}
            \\usepackage{titlesec}
           
%% Makeover cantv 
  
            \\usepackage{xcolor}
            \\usepackage{lmodern}
            \\renewcommand*{\\familydefault}{\\sfdefault}

         
            \\titleformat{\\chapter}
            {\\color{black}\\Huge\\bfseries}
            {\\color{black}\\Huge\\bfseries\\thechapter}{1em}{}
            
            \\titleformat{\\section}
            {\\color{black}\\LARGE\\bfseries}
            {\\color{black}\\LARGE\\bfseries\\thesection}{1em}{}
            

            \\titleformat{\\subsection}
            {\\color{black}\\Large\\bfseries}
            {\\color{black}\\Large\\bfseries\\thesubsection}{1em}{}


%% end makeover 

	    \\usepackage[ilines, komastyle]{scrpage2}
	    \\pagestyle{scrheadings}	     
	    \\clearscrheadfoot
	    \\ihead[ 
            \\vspace{0cm}
            \\hspace{11cm}
	     	\\includegraphics{/usr/share/covetel-doc/imgs/logo-cantv} 
		]{
            \\vspace{0cm}
            \\hspace{11cm}
		    \\includegraphics{/usr/share/covetel-doc/imgs/logo-cantv}
		}
	    \\cfoot[ 
            \\vspace{1.5cm}
            \\hspace{0cm}
            \\pagemark/\\pageref{LastPage} 
         ]{ 
            \\vspace{1.5cm}
            \\hspace{0cm}
            \\pagemark/\\pageref{LastPage} 
         }
        \\ifoot[ 
	        \\includegraphics{/usr/share/covetel-doc/imgs/footer_cantv} 
		]{
		    \\includegraphics{/usr/share/covetel-doc/imgs/footer_cantv}
		}"
	     
             ("\\chapter{%s}" . "\\chapter{%s}")
	     ("\\section{%s}" . "\\section*{%s}")
             ("\\subsection{%s}" . "\\subsection*{%s}")
             ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
             ("\\paragraph{%s}" . "\\paragraph*{%s}")
             ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
