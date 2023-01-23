haskell8_8_path = /usr/local/ghc/bin/ghc
haskell8_10_path = ghc

compileOld:
	cp binarytrees.ghc binarytrees.hs
	$(haskell8_8_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -funbox-strict-fields binarytrees.hs -o binarytrees.ghc_run

compileNew:
	cp binarytrees.ghc binarytrees.hs
	$(haskell8_10_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -funbox-strict-fields binarytrees.hs -o binarytrees.ghc_run

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "./binarytrees.ghc_run +RTS -N4 -K128M -H -RTS 21" Haskell8_8 binary-trees

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "./binarytrees.ghc_run +RTS -N4 -K128M -H -RTS 21" Haskell8_10 binary-trees

run:
	./binarytrees.ghc_run +RTS -N4 -K128M -H -RTS 21

mem:
	/usr/bin/time -v  ./binarytrees.ghc_run +RTS -N4 -K128M -H -RTS 21

valgrind:
	valgrind --tool=massif --stacks=yes  ./binarytrees.ghc_run +RTS -N4 -K128M -H -RTS 21
