example/example.pdf:
	@cd example && pdflatex example
	@mv example/example.pdf ./

clean:
	git clean -xdf

test: clean example.pdf
	@echo "Opening example.pdf in evince. Does it look okay?"
	@evince example/example.pdf
