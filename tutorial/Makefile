##  Makefile for thesis production

#SHELL = /usr/local/bin/tcsh

#MAIN = thesis

all:	clean latex dvips pdf

latex:
	latex $(MAIN)
	bibtex $(MAIN)
	latex $(MAIN)
	latex $(MAIN)

latex1:
	latex $(MAIN)

latex2:
	latex $(MAIN)
	latex $(MAIN)

dvips:
	dvips -o $(MAIN).ps $(MAIN)

pdf: dvips
	ps2pdf $(MAIN).ps

print:
	lpr $(MAIN).ps

clean:
	-rm $(MAIN).ps
	-rm $(MAIN).aux
	-rm $(MAIN).bbl
	-rm $(MAIN).blg
	-rm $(MAIN).dvi
	-rm $(MAIN).lof
	-rm $(MAIN).lot
	-rm $(MAIN).loa
	-rm $(MAIN).lom
	-rm $(MAIN).*log
	-rm $(MAIN).toc
	-rm *~

allclean:
	-rm *.ps
	-rm *.aux
	-rm *.bbl
	-rm *.blg
	-rm *.dvi
	-rm *.lof
	-rm *.lot
	-rm *.loa
	-rm *.lom
	-rm *.*log
	-rm *.toc
	-rm *~

backup:	clean
	-set TIMESTAMP = `date +%y%m%d%H%M`;\
	cd ..; tar cvzf - > th$$TIMESTAMP.tar.gz;\
	chmod go-rwx th$$TIMESTAMP.tar.gz;\
	rcp th$$TIMESTAMP.tar.gz dac0:texas;\
	rcp th$$TIMESTAMP.tar.gz dac3:texas

##


