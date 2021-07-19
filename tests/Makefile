all: runtests

runtests:
	rm -f craverly-puny.scr
	inform -D +../../lib -v3 ../src/craverly-puny.inf
	frotz craverly-puny.z3 < craverly.cmd 
	tail +6 craverly-puny.scr > craverly-puny.output
	(wdiff craverly.txt craverly-puny.output > wdiff.txt; return 0);
	wdiff -3 craverly.txt craverly-puny.output

i6:
	rm -f craverly-i6.scr
	inform -D -v5 ../src/craverly-i6.inf
	frotz craverly-i6.z5 < craverly.cmd 
	tail +6 craverly-i6.scr > craverly-i6.output
	(wdiff craverly.txt craverly-i6.output > wdiff.txt; return 0);
	wdiff -3 craverly.txt craverly-i6.output

clean:
	rm -f *z3 *z5 *scr *output *messages wdiff.txt
