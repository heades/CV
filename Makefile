all : pdf

cv.tex : cv.md
	pandoc -f markdown -t latex --template=cv-layout.tex -o cv.tex cv.md

pdf : cv.tex
	pdflatex cv.tex
	pdflatex cv.tex
	pdflatex cv.tex

clean :
	rm -f *~ *.bbl *.blg *.log *.aux cv.tex *.out *.cls
