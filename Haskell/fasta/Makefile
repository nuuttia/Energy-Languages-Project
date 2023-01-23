haskell8_8_path = /usr/local/ghc/bin/ghc
haskell8_10_path = ghc

compileOld:
	cp fasta.ghc-2.ghc fasta.ghc-2.hs
	$(haskell8_8_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -XOverloadedStrings fasta.ghc-2.hs -o fasta.ghc-2.ghc_run

compileNew:
	cp fasta.ghc-2.ghc fasta.ghc-2.hs
	$(haskell8_10_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -XOverloadedStrings fasta.ghc-2.hs -o fasta.ghc-2.ghc_run

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "./fasta.ghc-2.ghc_run +RTS -N4 -RTS 25000000" Haskell8_8 fasta

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "./fasta.ghc-2.ghc_run +RTS -N4 -RTS 25000000" Haskell8_10 fasta

run:
	./fasta.ghc-2.ghc_run +RTS -N4 -RTS 25000000

mem:
	/usr/bin/time -v  ./fasta.ghc-2.ghc_run +RTS -N4 -RTS 25000000

valgrind:
	valgrind --tool=massif --stacks=yes  ./fasta.ghc-2.ghc_run +RTS -N4 -RTS 25000000
