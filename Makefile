#!/bin/bash

####################################
########      MAKEFILE      ########
####################################

PYTHON = "python3"
MODULE_TARGETS = $("PYTHON ./generate_targets.py")


default: build


##################
####   BUILD  ####

build: buildc buildpy clean_nonessential

buildc: $(wildcard MODULE_TARGETS) setup.py
	$(PYTHON) setup.py build_ext
	# $(PYTHON) setup.py install

buildpy: test.py setup.py


##################
####   TEST   ####

test: FORCE
	$(PYTHON) test.py


##################
#### CLEANUP  ####

clean: clean_nonessential FORCE
	rm -rf *.so

clean_nonessential: FORCE
	rm -rf build *wrap.c __pycache__

##################
####   DUMMY  ####

FORCE: ;
