CFLAGS=-std=f95

all: iterative

iterative: stack.f95 iterative.f95
	gfortran $(CFLAGS) stack.f95 iterative.f95 -o iterative

.PHONY: iterative
