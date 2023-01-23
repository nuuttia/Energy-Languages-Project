lua_5_3 = /usr/local/lua_local/bin/lua
lua_5_4 = /usr/local/lua-5.4.4/bin/lua

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_3}  fannkuchredux.lua 12" Lua5_3 fannkuch-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_4}  fannkuchredux.lua 12" Lua5_4 fannkuch-redux

compile:

run:
	~/lua_local/bin/lua  fannkuchredux.lua 12

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  fannkuchredux.lua 12

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  fannkuchredux.lua 12
