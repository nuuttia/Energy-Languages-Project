lua_5_3 = /usr/local/lua_local/bin/lua
lua_5_4 = /usr/local/lua-5.4.4/bin/lua

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_3}  spectralnorm.lua 5500" Lua5_3 spectral-norm

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_4}  spectralnorm.lua 5500" Lua5_4 spectral-norm


compile:

run:
	~/lua_local/bin/lua  spectralnorm.lua 5500

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  spectralnorm.lua 5500

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  spectralnorm.lua 5500
