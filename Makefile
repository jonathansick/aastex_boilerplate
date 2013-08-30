ROOT=article

all: $(ROOT).pdf

vc.tex:
	./vc

article.pdf: $(ROOT).tex vc.tex
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
