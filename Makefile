.PHONY: all clean

LILYPOND = /Users/vijay/Applications/Lilypond.app/Contents/Resources/bin/lilypond

all:

%.pdf: %.ly
	$(LILYPOND) $<
