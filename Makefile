
all:	review.pdf challenge.pdf challenge-anon.pdf

%.pdf:	%.tex
	pdflatex -shell-escape -halt-on-error $<
	pdflatex -shell-escape -halt-on-error $<

%-anon.pdf:	%.tex
	sed 's/documentclass[[]/documentclass[authordraft=true,anonymous=true,/' $< > $*-anon.tex
	pdflatex -shell-escape -halt-on-error $*-anon.tex
	pdflatex -shell-escape -halt-on-error $*-anon.tex
