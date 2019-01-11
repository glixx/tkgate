DESTDIR =

all: html pdf

html: index.xml index.xsl titlepage.xsl
	xsltproc -o html/index.html index.xsl index.xml

pdf: index.xml index_fo.xsl
	xsltproc -o pdf/manual.fo index_fo.xsl index.xml
	fop pdf/manual.fo pdf/manual.pdf
	rm pdf/manual.fo

clean:
	rm -rf html pdf

.PHONY: all clean
