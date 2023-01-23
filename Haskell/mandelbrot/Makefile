haskell8_8_path = /usr/local/ghc/bin/ghc
haskell8_10_path = ghc

compileOld:
	cp mandelbrot.ghc-2.ghc mandelbrot.ghc-2.hs
	$(haskell8_8_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts  mandelbrot.ghc-2.hs -o mandelbrot.ghc-2.ghc_run

compileNew:
	cp mandelbrot.ghc-2.ghc mandelbrot.ghc-2.hs
	$(haskell8_10_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -funbox-strict-fields mandelbrot.ghc-2.hs -o mandelbrot.ghc-2.ghc_run

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "./mandelbrot.ghc-2.ghc_run +RTS -N4 -RTS 16000" Haskell8_10 mandelbrot

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "./mandelbrot.ghc-2.ghc_run +RTS -N4 -RTS 16000" Haskell8_8 mandelbrot
	
run:
	./mandelbrot.ghc-2.ghc_run +RTS -N4 -RTS 16000

mem:
	/usr/bin/time -v ./mandelbrot.ghc-2.ghc_run +RTS -N4 -RTS 16000

valgrind:
	valgrind --tool=massif --stacks=yes ./mandelbrot.ghc-2.ghc_run +RTS -N4 -RTS 16000
