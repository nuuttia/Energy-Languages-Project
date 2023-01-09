compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "~/lua_local/bin/lua  spectralnorm.lua 5500" Lua spectral-norm

run:
	~/lua_local/bin/lua  spectralnorm.lua 5500

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  spectralnorm.lua 5500

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  spectralnorm.lua 5500
