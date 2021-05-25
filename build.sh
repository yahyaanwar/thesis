rm -f thesis.aux thesis.bbl thesis.blg thesis.lof thesis.log thesis.lol thesis.lot thesis.out thesis.toc && \

pdflatex --shell-escape thesis.tex && \
bibtex thesis.aux && \
pdflatex --shell-escape thesis.tex && \
pdflatex --shell-escape thesis.tex
