all : pdf

pdf : cv.tex
	pdflatex cv.tex
	pdflatex cv.tex
	pdflatex cv.tex

clean :
	rm -f *~ *.bbl *.blg *.log *.aux
