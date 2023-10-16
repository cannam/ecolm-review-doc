
all:	review.pdf challenge.pdf challenge-anon.pdf poster.pdf

%.pdf:	%.tex
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error $<

%-anon.pdf:	%.tex
	sed 's/documentclass[[]/documentclass[authordraft=true,anonymous=true,/' $< > $*-anon.tex
	pdflatex -halt-on-error $*-anon.tex
	pdflatex -halt-on-error $*-anon.tex
