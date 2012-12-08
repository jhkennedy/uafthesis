example/example.pdf:
	@cd example && pdflatex example &2> /dev/null

clean:
	@git clean -xdf

test: clean example/example.pdf
	@echo
	@echo "Opening example.pdf in evince. Does it look okay?"
	@echo
	@evince example/example.pdf
