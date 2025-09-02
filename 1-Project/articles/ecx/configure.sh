#!/usr/bin/env bash

url=../../../01-media/logo/png/
target=full_bw.png
cp -v $url/$target ./src/figures/

cp -fv ../../../03-bibtex/electrochemistry.bib ./src/references.bib

