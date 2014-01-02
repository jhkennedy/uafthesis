example.pdf: uafthesis.cls
	@echo "-> building example.pdf..."
	@cd example && ./build.sh
	@mv example/example.pdf ./

clear:
	@echo "-> clearing..."
	@git clean -xdf > /dev/null

clean: clear
	@echo "-> cleaning..."
	@rm example.pdf

test: clean example.pdf
	@# Feel free to make this smarter.
	@echo "-> Opening example.pdf in evince. Does it look okay?"
	@`evince example.pdf &2> /dev/null`

publish: example.pdf clear
	@echo "-> creating tarball..."
	@tar -czf /tmp/uafthesis.tgz --exclude=.git ../uafthesis > /dev/null
	
	@echo "-> publishing to CTAN..."

	#
	#
	# You should probably not be publishing this package.
	# Let the maintainer do it!!
	#
	#
	
	exit 1
	@# see: http://www.tex.ac.uk/upload/
	@# see: http://www.tex.ac.uk/upload/upload-guidelines.html
	curl --form "contribution=uafthesis" \
	     --form "name=Joshua Holbrook" \
	     --form "email=josh.holbrook@gmail.com" \
	     --form "summary=Document class for theses at University of Alaska Fairbanks." \
	     --form "version=12.12" \
	     --form "directory=/macros/latex/contrib/uafthesis" \
	     --form "license=free" \
	     --form "freeversion=lppl" \
	     --form "file=@/tmp/uafthesis.tgz" \
	     http://www.tex.ac.uk/cgi-bin/ctan-upload.cgi
