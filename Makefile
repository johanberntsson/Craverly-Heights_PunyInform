all: craverly3

craverly3:
	inform +../lib -v3 src/craverly-puny.inf
	mv craverly-puny.z3 bin
	frotz bin/craverly-puny.z3

craverly5:
	inform +../lib -v5 src/craverly-puny.inf
	mv craverly-puny.z5 bin
	frotz bin/craverly-puny.z5

inform:
	~/inform-6.34-6.12.2/inform -D -v8 -w -X +lib,~/inform-6.34-6.12.2/lib -D -v8 src/craverly-puny.inf
	mv craverly-puny.z8 bin
	frotz bin/craverly-puny.z8

clean:
	rm -f bin/*
