# Root is the name (without extension) of main tex document
ROOT=article

all: $(ROOT).pdf

vc.tex:
	./vc

$(ROOT).pdf: *.tex
	latexmk -f -pdf -bibtex-cond $(ROOT).tex

clean:
	rm $(ROOT).fdb_latexmk
	rm $(ROOT).aux
	rm $(ROOT).blg
	rm $(ROOT).fls
	rm $(ROOT).log
	rm $(ROOT).out
	rm $(ROOT)Notes.bib
	rm vc.tex

# Word count
wc:
	texcount -q $(ROOT).tex
