# Make the magazine
#

SRC=$(shell cat articles.txt)

MAGLANG=$(shell basename $(CURDIR))
MAGNAME=$(notdir $(patsubst %/,%,$(dir $(CURDIR))))

OUTEPUB=gtia-$(MAGNAME)-$(MAGLANG).epub
COVER=cover-$(MAGNAME)-$(MAGLANG).jpg

epub:
	pandoc -o $(OUTEPUB) --epub-cover-image=$(COVER) --epub-metadata=metadata.xml --toc title.txt $(SRC)


