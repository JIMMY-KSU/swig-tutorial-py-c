## swig-tutorial-py-c
working through tutorials to understand python/c extension modules


### workflow
- plain C functions, no object oriented stuff, no C/Python API (`Python.h` stuff)
  1. write a C file `something_else.c`
  1. expose certain methods to SWIG in `something_else.i`
  1. write module descriptor in `setup.py` and add instruction to set it up in `__main__` (see examples)
  1. `make`:
      - define which version of `python` to use at the top of Makefile.
      - `make` is written to use `generate_targets.py` to see what you define as extension modules in `setup.py`.
        therefore it is important that you follow all previous steps carefully, otherwise the modules will not
        get exposed to `make`.
  1. import in a py script as if you'd import a python module: `from something import something_else`

  examples:
  - `example.{c,i}`; `test.py`

- object oriented stuff

  WIP


### resources
- the original tutorial:
  [tutorial on `swig.org`](http://www.swig.org/tutorial.html)
- bugs encountered and workarounds:
  - [`distutils` + `setup.py` method is cleaner and works better](https://stackoverflow.com/questions/25882150/python-h-not-found-using-swig-and-anaconda-python)
  - [getting rid of non-argument-taking function warnings in `C`](https://stackoverflow.com/questions/42125/function-declaration-isnt-a-prototype)
