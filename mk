#!/bin/bash
make clean
make pdf
make clean
cp -p "`ls -dtr1 *.pdf | tail -1`" vwa.pdf
pdftotext vwa.pdf - | wc -m