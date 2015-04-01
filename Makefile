all: fortran ada c

fortran:
	$(MAKE) -C fortran

ada:
	$(MAKE) -C ada

c:
	$(MAKE) -C c

.PHONY: fortran ada c
