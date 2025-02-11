FNAME=main
OUTNAME=pec_fitting_procedure
TEX=pdflatex
BIB=biber
VIEWER=sumatrapdf 
NCL=makeindex
BUILD_FOLDER=build
SRC_FOLDER=src
BIN_FOLDER=bin

.PHONY: all tex biber index link copy clean

all: tex biber link copy

tex:
	$(TEX) -output-directory=./$(BUILD_FOLDER) -synctex=1 ./src/$(FNAME).tex
	
biber:
	$(BIB) ./$(BUILD_FOLDER)/$(FNAME).bcf --output-file ./$(BUILD_FOLDER)/$(FNAME).bbl

link:
	$(TEX) -output-directory=./$(BUILD_FOLDER) -synctex=1 ./src/$(FNAME).tex
	$(TEX) -output-directory=./$(BUILD_FOLDER) -synctex=1 ./src/$(FNAME).tex

index: 
	$(NCL) ./$(BUILD_FOLDER)/$(FNAME).nlo -s nomencl.ist -o ./$(BUILD_FOLDER)/$(FNAME).nls

copy: 
	cp -rf $(BUILD_FOLDER)/$(FNAME).pdf ../$(OUTNAME).pdf

clean:
	rm -rf build/*
	rm -rf bin/*.pdf