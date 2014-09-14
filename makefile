PAPERNAME = main
TEXFILES = *.tex *.bib

$(PAPERNAME).pdf: $(TEXFILES)
	pdflatex main
	makeindex main.idx -s StyleInd.ist
	biber main
	pdflatex main

clean:
	rm -f $(PAPERNAME).pdf *.toc *.idx *.ilg *.ind *.ptc *.bcf *.xml *.dvi *.aux *.log *.blg *.bbl *.bak *~

