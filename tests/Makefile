all: runtests

runtests:
	rm -f craverly-puny.scr
	inform -D +../../lib -v3 ../src/craverly-puny.inf
	frotz craverly-puny.z3 < craverly.cmd 
	tail +6 craverly-puny.scr > craverly-puny.output
	wdiff -3 craverly.txt craverly-puny.output

clean:
	rm -f *z3 *scr *output *messages
