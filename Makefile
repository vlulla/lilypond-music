.PHONY: all clean

LILYPOND = $(shell which lilypond)

all:

%.pdf: %.ly
	$(LILYPOND) $<
