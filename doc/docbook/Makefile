DESTDIR =

all: index.html

index.html: index.xml index.xsl
	xsltproc index.xsl index.xml

clean:
	rm *.html

.PHONY: all clean
