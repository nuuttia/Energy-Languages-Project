haskell8_8_path = /usr/local/ghc/bin/ghc
haskell8_10_path = ghc

compileOld:
	cp revcomp.ghc-3.ghc revcomp.ghc-3.hs
	$(haskell8_8_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -funfolding-use-threshold=32 -XMagicHash -XUnboxedTuples revcomp.ghc-3.hs -o revcomp.ghc-3.ghc_run

compileNew:
	cp revcomp.ghc-3.ghc revcomp.ghc-3.hs
	$(haskell8_10_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -funfolding-use-threshold=32 -XMagicHash -XUnboxedTuples revcomp.ghc-3.hs -o revcomp.ghc-3.ghc_run

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "./revcomp.ghc-3.ghc_run +RTS -N4 -RTS 0 < ../../revcomp-input25000000.txt" Haskell8_8 reverse-complement

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "./revcomp.ghc-3.ghc_run +RTS -N4 -RTS 0 < ../../revcomp-input25000000.txt" Haskell8_10 reverse-complement

run:
	./revcomp.ghc-3.ghc_run +RTS -N4 -RTS 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v  ./revcomp.ghc-3.ghc_run +RTS -N4 -RTS 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  ./revcomp.ghc-3.ghc_run +RTS -N4 -RTS 0 < ../../revcomp-input25000000.txt
