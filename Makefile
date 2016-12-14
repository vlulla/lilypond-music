.PHONY: all clean

LILYPOND = /Users/vijay/Applications/Lilypond.app/Contents/Resources/bin/lilypond

all: tst.pdf

%.pdf: %.ly
	$(LILYPOND) $<
