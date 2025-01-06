SOURCE = draft-paulwh-crypto-components
all: $(SOURCE).xml $(SOURCE).txt

$(SOURCE).txt:	$(SOURCE).xml
	xml2rfc $(SOURCE).xml -n --html --text

$(SOURCE).xml:	$(SOURCE).mkd
	kramdown-rfc $(SOURCE).mkd >$(SOURCE).new.xml
	mv $(SOURCE).new.xml $(SOURCE).xml

.PRECIOUS: %.xml