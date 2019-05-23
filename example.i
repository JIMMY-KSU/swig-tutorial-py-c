/* example.i */
%module example
%{
/* Put header files here or function declarations like below */
/* extern double My_variable;
extern int fact(int n);
extern int my_mod(int x, int y);
extern char *get_time(void); */
#include "example.h"
%}

int fact(int n);
int my_mod(int x, int y);
char* get_time(void);
