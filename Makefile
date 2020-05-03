.PHONY: all clean

.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
.ONESHELL:
SHELL := bash

LILYPOND = $(shell which lilypond)
OPTIONS = --silent

## all: $(patsubst %.ly,%.pdf,$(realpath $(wildcard *.ly)))
## all: $(patsubst %.ly,%.pdf,$(realpath $(shell ls *.ly)))
all: $(patsubst %.ly,%.pdf,$(wildcard *.ly))

%.pdf: %.ly
	$(LILYPOND) $(OPTIONS) $<

## clean: $(abspath $(wildcard *.pdf))
## 	rm -rf $^
clean: $(wildcard *.pdf)
	@rm -rf $^
