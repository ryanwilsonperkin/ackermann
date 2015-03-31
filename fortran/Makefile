CFLAGS=-std=f95

all: iterative recursive

iterative: stack.f95 iterative.f95
	gfortran $(CFLAGS) stack.f95 iterative.f95 -o iterative

recursive: recursive.f95
	gfortran $(CFLAGS) recursive.f95 -o recursive

.PHONY: iterative recursive
