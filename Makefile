
review.pdf:	review.tex
	pdflatex -shell-escape -halt-on-error $<
	pdflatex -shell-escape -halt-on-error $<
