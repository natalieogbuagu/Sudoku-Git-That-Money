# Makefile for the CS50 Sudoku Game
# May-June 2020
# Sherry Liu, Natalie Ogbuagu, Stuart Hayes, Zack Gottesman

# add -DNOSLEEP to disable the automatic sleep after web-page fetches
#               (students, please do not use -DNOSLEEP!)
# add -DMEMTEST for memory tracking report in indexer
# (and run `make clean; make` whenever you change this)
FLAGS = # -DMEMTEST  # -DNOSLEEP

.PHONY: all clean

############## default: make all libs and programs ##########

all:
	$(MAKE) -C creator
	$(MAKE) -C solver
	$(MAKE) -C sudoku

############## clean up after compilation ##########

clean:
	rm -f *~ *.o *.dSYM
	rm -f $(PROG)
	$(MAKE) -C creator clean
	$(MAKE) -C solver clean
