filename=main
out=cv-milan_skocic
TEX=pdflatex
BIB=biber
VIEWER=evince 
NCL=makeindex

all: en fr sr

en: $(filename)_en.tex
	$(TEX) --synctex=1 $^ 
	$(BIB) $(filename)_en.bcf --output-file $(filename)_en.bbl 
	$(TEX) --synctex=1 $^
	$(TEX) --synctex=1 $^
	cp -f $(filename)_en.pdf $(out)-en.pdf

fr: $(filename)_fr.tex
	$(TEX) --synctex=1 $^
	$(BIB) $(filename)_fr.bcf --output-file $(filename)_fr.bbl
	$(TEX) --synctex=1 $^
	$(TEX) --synctex=1 $^
	cp -f $(filename)_fr.pdf $(out)-fr.pdf

sr: $(filename)_sr.tex
	$(TEX) --synctex=1 $^
	$(BIB) $(filename)_sr.bcf --output-file $(filename)_sr.bbl
	$(TEX) --synctex=1 $^
	$(TEX) --synctex=1 $^
	cp -f $(filename)_sr.pdf $(out)-sr.pdf

read: 
	$(VIEWER) $(out)-en.pdf
	$(VIEWER) $(out)-fr.pdf
	$(VIEWER) $(out)-sr.pdf

readen:
	$(VIEWER) $(out)-en.pdf

readfr:
	$(VIEWER) $(out)-fr.pdf

readsr:
	$(VIEWER) $(out)-sr.pdf
	
clean:
	rm -f *.aux *.blg *.out *.bbl *.log *.nlo *.lof *.lot *.toc *.bcf *.ilg *.xml *.nls *.ind *.gz

cleanall: clean
	rm -f *.pdf

.PHONY: all en fr sr read readen readfr readsr clean cleanall
