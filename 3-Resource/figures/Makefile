BUILD_FOLDER=build
SRC_FOLDER=./src
PNG_FOLDER=./png
BIN_FOLDER=./pdf

TEX=pdflatex
TEX_OPTIONS=-output-directory=$(BUILD_FOLDER)

CONVERT=magick
CONVERT_DENSITY=300

TEX_SRC=$(wildcard $(SRC_FOLDER)/tikz_*.tex)
OUTPUTS=$(patsubst $(SRC_FOLDER)/%.tex, $(PNG_FOLDER)/%.png, $(TEX_SRC))

all: dirs $(OUTPUTS) 

dirs:
	mkdir -p $(BUILD_FOLDER)
	mkdir -p $(BIN_FOLDER)
	mkdir -p $(PNG_FOLDER)

$(BUILD_FOLDER)/%.pdf: $(SRC_FOLDER)/%.tex
	$(TEX) $(TEX_OPTIONS) $<
	cp $@ $(BIN_FOLDER)

$(PNG_FOLDER)/%.png: $(BUILD_FOLDER)/%.pdf
	$(CONVERT) -units pixelsperinch -density $(CONVERT_DENSITY) -quality 100 $<  $@
	$(CONVERT) $@ -resize 50% $@

clean:
	rm -rf $(BUILD_FOLDER)/*
	rm -rf $(BIN_FOLDER)/*
	rm -rf $(PNG_FOLDER)/*
