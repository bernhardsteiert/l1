#!/bin/sh
# Convert PDF to cropped, encapsulated PostScript.
# Helge Hass (2015)
# usage:
# pdf2eps <pdf file without ext>

pdfcrop $1.pdf
pdf2ps $1-crop.pdf $1.ps
ps2eps -f $1.ps 
rm  "$1-crop.pdf"
rm "$1.ps"
