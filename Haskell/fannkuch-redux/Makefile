haskell8_8_path = /usr/local/ghc/bin/ghc
haskell8_10_path = ghc

compileOld:
	cp fannkuchredux.ghc-3.ghc fannkuchredux.ghc-3.hs
	$(haskell8_8_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -XScopedTypeVariables fannkuchredux.ghc-3.hs -o fannkuchredux.ghc-3.ghc_run

compileNew:
	cp fannkuchredux.ghc-3.ghc fannkuchredux.ghc-3.hs
	$(haskell8_10_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -XScopedTypeVariables fannkuchredux.ghc-3.hs -o fannkuchredux.ghc-3.ghc_run

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "./fannkuchredux.ghc-3.ghc_run +RTS -N4 -RTS 12" Haskell8_8 binary-trees

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "./fannkuchredux.ghc-3.ghc_run +RTS -N4 -RTS 12" Haskell8_10 binary-trees

run:
	./fannkuchredux.ghc-3.ghc_run +RTS -N4 -RTS 12

mem:
	/usr/bin/time -v  ./fannkuchredux.ghc-3.ghc_run +RTS -N4 -RTS 12

valgrind:
	valgrind --tool=massif --stacks=yes  ./fannkuchredux.ghc-3.ghc_run +RTS -N4 -RTS 12
