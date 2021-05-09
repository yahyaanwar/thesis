I_FILES := $(wildcard thesis.tex)
O_FILES := $(I_FILES:%.tex=%.pdf)


.PHONY: build clean
.default: clean build

build: $(O_FILES)

%.pdf: %.tex
	pdflatex --shell-escape $< && \
	bibtex $< && \
	pdflatex --shell-escape $< && \
	pdflatex --shell-escape $<

clean:
	-rm -f $(O_FILES)
	-rm -rf _minted-thesis
	-rm -f $(I_FILES:%.tex=%.aux)
	-rm -f $(I_FILES:%.tex=%.bbl)
	-rm -f $(I_FILES:%.tex=%.blg)
	-rm -f $(I_FILES:%.tex=%.lof)
	-rm -f $(I_FILES:%.tex=%.log)
	-rm -f $(I_FILES:%.tex=%.lol)
	-rm -f $(I_FILES:%.tex=%.lot)
	-rm -f $(I_FILES:%.tex=%.out)
	-rm -f $(I_FILES:%.tex=%.toc)
