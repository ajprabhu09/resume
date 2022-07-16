all: build

clean:
	rm *.aux *latexmk *.fls *.log *.out *.pdf *.synctex.gz

setup:
	sudo apt install texlive texlive-latex-extra texlive-latex-extra-doc latexmk aspell
build: main.tex
	echo "Building Resume!"
	pdflatex main.tex

spellcheck:
	aspell -c main.tex --personal=spell-dict.txt --home-dir=.