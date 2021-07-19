all: craverly3

craverly3:
	inform +../lib -v3 -es src/craverly-puny.inf
	mv craverly-puny.z3 bin
	frotz bin/craverly-puny.z3

craverly5:
	inform +../lib -v5 -es src/craverly-puny.inf
	mv craverly-puny.z5 bin
	frotz bin/craverly-puny.z5

i6:
	inform -v5 -es src/craverly-i6.inf
	mv craverly-i6.z5 bin
	frotz bin/craverly-i6.z5

abbrevations:
	#inform -r --opt TRANSCRIPT_FORMAT=1 +../lib src/craverly-puny.inf
	inform -r --opt TRANSCRIPT_FORMAT=1 src/craverly-i6.inf
	python3 abbrevations.py -f
	rm -f craverly-puny.z5

clean:
	rm -f bin/* gametext.txt mygame_freq.zap
