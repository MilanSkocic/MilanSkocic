FNAME=main
OUTNAME=pec_fitting_procedure
TEX=pdflatex
BIB=biber
VIEWER=sumatrapdf 
NCL=makeindex
BUILD_FOLDER=build
SRC_FOLDER=src
BIN_FOLDER=bin

.ONESHELL:

.PHONY: all dirs tex biber bibtex index link copy clean

all: dirs tex biber link copy

dirs:
	mkdir -p build
	mkdir -p bin

tex:
	$(TEX) -output-directory=./$(BUILD_FOLDER) -synctex=1 ./src/$(FNAME).tex
	
biber:
	$(BIB) ./$(BUILD_FOLDER)/$(FNAME).bcf --output-file ./$(BUILD_FOLDER)/$(FNAME).bbl

bibtex:
	cp $(SRC_FOLDER)/references.bib $(BUILD_FOLDER)/
	cd $(BUILD_FOLDER)
	$(BIB) $(FNAME).aux 
	cd ..

link:
	$(TEX) -output-directory=./$(BUILD_FOLDER) -synctex=1 ./src/$(FNAME).tex
	$(TEX) -output-directory=./$(BUILD_FOLDER) -synctex=1 ./src/$(FNAME).tex

index: 
	$(NCL) ./$(BUILD_FOLDER)/$(FNAME).nlo -s nomencl.ist -o ./$(BUILD_FOLDER)/$(FNAME).nls

copy: 
	cp -rf $(BUILD_FOLDER)/$(FNAME).pdf $(BIN_FOLDER)/$(OUTNAME).pdf

clean:
	rm -rf $(BUILD_FOLDER)/*
	rm -rf $(BIN_FOLDER)/*
