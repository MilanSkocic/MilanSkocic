filename=main
out=cv-milan_skocic
TEX=pdflatex
BIB=biber
VIEWER=evince 
NCL=makeindex
BUILD_FOLDER=../build
BIN_FOLDER=../pdf
SRC_FOLDER=./

all: en fr sr

en: $(SRC_FOLDER)/$(filename)_en.tex
	$(TEX) --output-directory=$(BUILD_FOLDER) --synctex=1 $^ 
	$(BIB) $(BUILD_FOLDER)/$(filename)_en.bcf --output-file $(BUILD_FOLDER)/$(filename)_en.bbl 
	$(TEX) --output-directory=$(BUILD_FOLDER) --synctex=1 $^ 
	$(TEX) --output-directory=$(BUILD_FOLDER) --synctex=1 $^ 
	cp -f $(BUILD_FOLDER)/$(filename)_en.pdf $(BIN_FOLDER)/$(out)-en.pdf


fr: $(SRC_FOLDER)/$(filename)_fr.tex
	$(TEX) --output-directory=$(BUILD_FOLDER) --synctex=1 $^ 
	$(BIB) $(BUILD_FOLDER)/$(filename)_fr.bcf --output-file $(BUILD_FOLDER)/$(filename)_fr.bbl 
	$(TEX) --output-directory=$(BUILD_FOLDER) --synctex=1 $^ 
	$(TEX) --output-directory=$(BUILD_FOLDER) --synctex=1 $^ 
	cp -f $(BUILD_FOLDER)/$(filename)_fr.pdf $(BIN_FOLDER)/$(out)-fr.pdf

sr: $(SRC_FOLDER)/$(filename)_sr.tex
	$(TEX) --output-directory=$(BUILD_FOLDER) --synctex=1 $^ 
	$(BIB) $(BUILD_FOLDER)/$(filename)_sr.bcf --output-file $(BUILD_FOLDER)/$(filename)_sr.bbl 
	$(TEX) --output-directory=$(BUILD_FOLDER) --synctex=1 $^ 
	$(TEX) --output-directory=$(BUILD_FOLDER) --synctex=1 $^ 
	cp -f $(BUILD_FOLDER)/$(filename)_sr.pdf $(BIN_FOLDER)/$(out)-sr.pdf

.PHONY: all en fr sr clean 
