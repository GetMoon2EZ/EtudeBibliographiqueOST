FICHIER = rapport

all: $(FICHIER) clean

$(FICHIER): 
	pdflatex -synctex=1 --shell-escape -interaction=nonstopmode $(FICHIER).tex;
	pdflatex -synctex=1 --shell-escape -interaction=nonstopmode $(FICHIER).tex;
	bibtex $(FICHIER).aux;
	bibtex $(FICHIER).aux;
	pdflatex -synctex=1 --shell-escape -interaction=nonstopmode $(FICHIER).tex;
	pdflatex -synctex=1 --shell-escape -interaction=nonstopmode $(FICHIER).tex;
	pdflatex -synctex=1 --shell-escape -interaction=nonstopmode $(FICHIER).tex;

clean: 
	rm -f $(FICHIER).blg $(FICHIER).bbl $(FICHIER).aux $(FICHIER).log $(FICHIER)~ $(FICHIER).tmp $(FICHIER).out $(FICHIER).brf $(FICHIER).synctex.gz $(FICHIER).toc;
	rm -rf _minted-$(FICHIER);

