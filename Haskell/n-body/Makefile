haskell8_8_path = /usr/local/ghc/bin/ghc
haskell8_10_path = ghc

compileOld:
	cp nbody.ghc-2.ghc nbody.ghc-2.hs
	$(haskell8_8_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts  nbody.ghc-2.hs -o nbody.ghc-2.ghc_run

compileNew:
	cp nbody.ghc-2.ghc nbody.ghc-2.hs
	$(haskell8_10_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts  nbody.ghc-2.hs -o nbody.ghc-2.ghc_run

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "./nbody.ghc-2.ghc_run +RTS -N4 -RTS 50000000" Haskell8_8 n-body

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "./nbody.ghc-2.ghc_run +RTS -N4 -RTS 50000000" Haskell8_10 n-body

run:
	./nbody.ghc-2.ghc_run +RTS -N4 -RTS 50000000

mem:
	/usr/bin/time -v  ./nbody.ghc-2.ghc_run +RTS -N4 -RTS 50000000

valgrind:
	valgrind --tool=massif --stacks=yes  ./nbody.ghc-2.ghc_run +RTS -N4 -RTS 50000000
