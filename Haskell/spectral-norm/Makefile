haskell8_8_path = /usr/local/ghc/bin/ghc
haskell8_10_path = ghc

compileOld:
	cp spectralnorm.ghc-4.ghc spectralnorm.ghc-4.hs
	$(haskell8_8_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -XMagicHash spectralnorm.ghc-4.hs -o spectralnorm.ghc-4.ghc_run

compileNew:
	cp spectralnorm.ghc-4.ghc spectralnorm.ghc-4.hs
	$(haskell8_10_path) --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -XMagicHash spectralnorm.ghc-4.hs -o spectralnorm.ghc-4.ghc_run

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "./spectralnorm.ghc-4.ghc_run +RTS -N4 -RTS 5500" Haskell8_8 spectral-norm

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "./spectralnorm.ghc-4.ghc_run +RTS -N4 -RTS 5500" Haskell8_10 spectral-norm

run:
	./spectralnorm.ghc-4.ghc_run +RTS -N4 -RTS 5500

mem:
	/usr/bin/time -v ./spectralnorm.ghc-4.ghc_run +RTS -N4 -RTS 5500

valgrind:
	valgrind --tool=massif --stacks=yes ./spectralnorm.ghc-4.ghc_run +RTS -N4 -RTS 5500
