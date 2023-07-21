
review.pdf:	review.tex
	pdflatex -shell-escape -halt-on-error $<
