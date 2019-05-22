#!/bin/bash

default: build

build: example.c
	python3 setup.py build_ext --inplace

clean: FORCE
	rm -rf *.so *.o example.py build *wrap.c


FORCE: ;
