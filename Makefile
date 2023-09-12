
all:	review.pdf challenge.pdf

%.pdf:	%.tex
	pdflatex -shell-escape -halt-on-error $<
	pdflatex -shell-escape -halt-on-error $<
