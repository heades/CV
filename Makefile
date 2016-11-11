all : pdf

pdf : cv.tex
	pdflatex cv.tex
	pdflatex cv.tex
	pdflatex cv.tex
	skim_revert.sh $(CURDIR)/cv.pdf
	skim_revert.sh $(CURDIR)/cv.pdf
	skim_revert.sh $(CURDIR)/cv.pdf

clean :
	rm -f *~ *.bbl *.blg *.log *.aux
