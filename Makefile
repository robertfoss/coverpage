all:
	rm -rf gh-pages
	mkdir -p gh-pages
	rsync -a . gh-pages --exclude=gh-pages\
	                    --exclude=.git\
	                    --exclude=.gitignore\
	                    --exclude=LICENSE\
	                    --exclude=Makefile\
	                    --exclude=README.md\
	                    --exclude=*~\
	                    --exclude=*swp
	echo "coverpage.memcpy.io" >> gh-pages/CNAME
	ghp-import -m "Generate gh-page" -b gh-pages gh-pages
	git push origin gh-pages

clean:
	-rm *~

.PHONY: all clean
