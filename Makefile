all: craverly3

craverly3:
	inform +../lib -v3 -e src/craverly-puny.inf
	mv craverly-puny.z3 bin
	frotz bin/craverly-puny.z3

craverly5:
	inform +../lib -v5 -e src/craverly-puny.inf
	mv craverly-puny.z5 bin
	frotz bin/craverly-puny.z5

inform:
	inform -v8 src/craverly-puny.inf
	mv craverly-puny.z8 bin
	frotz bin/craverly-puny.z8

abbrevations:
	inform -r --opt TRANSCRIPT_FORMAT=1 +../lib src/craverly-puny.inf
	python3 abbrevations.py -f
	rm -f craverly-puny.z5

clean:
	rm -f bin/* gametext.txt mygame_freq.zap
