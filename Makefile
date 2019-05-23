#!/bin/bash

####################################
######## 			MAKEFILE			########
####################################

MODULE_TARGETS = $("./generate_targets.py")

default: build


##################
#### BUILD		####

build: buildc buildpy

buildc: $(wildcard MODULE_TARGETS) setup.py
	python3 setup.py build_ext --inplace

buildpy: test.py setup.py


##################
#### CLEANUP	####

clean: FORCE
	rm -rf *.so build */*wrap.c __pycache__


##################
#### DUMMY		####

FORCE: ;
