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
	inform -v8 src/craverly-puny.inf
	mv craverly-puny.z8 bin
	frotz bin/craverly-puny.z8

clean:
	rm -f bin/*
