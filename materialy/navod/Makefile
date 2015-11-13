
pdf-pandoc: 
	pandoc \
		--smart \
		--standalone \
		-t latex \
		--latex-engine=xelatex \
		-o opendata.pdf \
		meta.md studie.md navod-ckan.md navod-automatizace.md navod-ginis.md

# default template:
# https://github.com/jgm/pandoc-templates/blob/master/default.latex

clean:
	rm -rf *.log *.out *.aux
