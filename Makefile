LATEXMK ?= latexmk

.PHONY: all clean

all: report.pdf

report.pdf: report.tex figures/*.png
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error report.tex

clean:
	$(LATEXMK) -c report.tex
