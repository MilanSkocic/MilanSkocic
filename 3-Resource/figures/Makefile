BUILD_FOLDER=build
SRC_FOLDER=./src
PNG_FOLDER=./png
PDF_FOLDER=./pdf

TEX=pdflatex
TEX_OPTIONS=-output-directory=$(BUILD_FOLDER)

PY=python

CONVERT=magick
CONVERT_DENSITY=300

TEX_SRC=./src/PEC-band_bending.tex \
		./src/PEC-band_model.tex \
		./src/PEC-excitation_carrier.tex \
		./src/PEC-fermi_level.tex \
		./src/PEC-fermi_position.tex \
		./src/PEC-interface_potential.tex \
		./src/PEC-photocurrent_generation.tex \
		./src/PEC-photocurrent_plieth.tex \
		./src/PEC-space_charge_depletion.tex \
		./src/EIS-black_box.tex
TEX_OUTPUTS=$(patsubst $(SRC_FOLDER)/%.tex, $(PNG_FOLDER)/%.png, $(TEX_SRC))

PY_SRC=./src/EIS-AC_waves.py \
	   ./src/EIS-AC_waves-trigcircle.py \
	   ./src/EIS-Nyquist_Representation.py \
	   ./src/EIS-BodeModulus_Representation.py \
	   ./src/EIS-BodePhase_Representation.py  \
	   ./src/EIS-CircuitElements.py \
	   ./src/EIS-SimplifiedRandles.py \
	   ./src/EIS-Randles.py
PY_OUTPUTS=$(patsubst $(SRC_FOLDER)/%.py, $(PNG_FOLDER)/%.png, $(PY_SRC)) $(patsubst $(SRC_FOLDER)/%.py, $(PDF_FOLDER)/%.pdf, $(PY_SRC))


all: dirs $(TEX_OUTPUTS) $(PY_OUTPUTS)

dirs:
	mkdir -p $(BUILD_FOLDER)
	mkdir -p $(PDF_FOLDER)
	mkdir -p $(PNG_FOLDER)

$(BUILD_FOLDER)/%.pdf: $(SRC_FOLDER)/%.tex
	$(TEX) $(TEX_OPTIONS) $<
	cp $@ $(PDF_FOLDER)

$(PNG_FOLDER)/%.png: $(BUILD_FOLDER)/%.pdf
	$(CONVERT) -units pixelsperinch -density $(CONVERT_DENSITY) -quality 100 $<  $@
	$(CONVERT) $@ -resize 50% $@

$(PNG_FOLDER)/%.png: $(SRC_FOLDER)/%.py
	$(PY) $< $@

$(PDF_FOLDER)/%.pdf: $(SRC_FOLDER)/%.py
	$(PY) $< $@
	
	
clean:
	rm -rf $(BUILD_FOLDER)/*
	rm -rf $(PDF_FOLDER)/*
	rm -rf $(PNG_FOLDER)/*

clean_tex:
	rm -rf ${TEX_OUTPUTS}

clean_py:
	rm -rf ${PY_OUTPUTS}
