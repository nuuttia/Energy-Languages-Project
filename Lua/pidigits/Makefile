compile:

xmeasure:
	sudo modprobe msr
	sudo ../../RAPL/main "~/lua_local/bin/lua  pidigits.lua-5.lua 10000" Lua pidigits

run:
	~/lua_local/bin/lua  pidigits.lua-5.lua 10000

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  pidigits.lua-5.lua 10000


valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  pidigits.lua-5.lua 10000

