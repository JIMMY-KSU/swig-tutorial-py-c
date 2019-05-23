#!/bin/bash

####################################
########      MAKEFILE      ########
####################################

PYTHON = "python3"
MODULE_TARGETS = $("PYTHON ./generate_targets.py")


default: build


##################
####   BUILD  ####

build: buildc buildpy

buildc: $(wildcard MODULE_TARGETS) setup.py
	$(PYTHON) setup.py build_ext --inplace

buildpy: test.py setup.py


##################
#### CLEANUP  ####

clean: FORCE
	rm -rf *.so build */*wrap.c __pycache__


##################
####   DUMMY  ####

FORCE: ;
