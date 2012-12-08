example/example.pdf:
	@cd example && pdflatex example

clean:
	git clean -xdf

test: clean example/example.pdf
	@echo "Opening example.pdf in evince. Does it look okay?"
	@evince example/example.pdf
