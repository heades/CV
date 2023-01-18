websitedir := /Users/heades/website/heades.github.io/includes

all : pdf

cv.tex : cv.md
	pandoc -f markdown -t latex --template=cv-layout.tex -o cv.tex cv.md

pdf : cv.tex
	pdflatex cv.tex
	pdflatex cv.tex
	pdflatex cv.tex

clean :
	rm -f *~ *.bbl *.blg *.log *.aux cv.tex *.out *.cls

open : pdf
	open -a Skim cv.pdf

push : pdf
	cp cv.pdf $(websitedir)
	cd $(websitedir) && git commit -a -m 'Updating my CV.' && git push
