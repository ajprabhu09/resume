# Installation of https://github.com/rf-latex/bold-extra/blob/master/bold-extra.sty into  /usr/share/texmf/tex/latex/bold-extra/ is required for this work (create usr share folder if needed)
all: build

clean:
	rm *.aux *latexmk *.fls *.log *.out *.pdf *.synctex.gz textidote_*.deb *.aux *.lof *.log *.lot *.fls *.out *.toc *.fmt *.fot *.cb *.cb2 *.lb *_latexmk *.pdf *.gz .aspell* *.4tc  *.dvi *.tmp *.xref
setup:
	sudo apt install texlive texlive-latex-extra texlive-latex-extra-doc latexmk aspell texlive-fonts-extra 

# Assumes that you already have java install 
setupgrammer:
	wget https://github.com/sylvainhalle/textidote/releases/latest/download/textidote_0.8.3_all.deb
	sudo apt install ./textidote_0.8.3_all.deb
	rm textidote_0.8.3_all.deb
cleansetupgrammer:
	rm -f textidote_*.deb


build: main.tex
	echo "Building Resume!"
	pdflatex main.tex

spellcheck:
	aspell -c main.tex --personal=spell-dict.txt --home-dir=.