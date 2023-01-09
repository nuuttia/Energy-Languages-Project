compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "~/lua_local/bin/lua  fannkuchredux.lua 12" Lua fannkuch-redux

run:
	~/lua_local/bin/lua  fannkuchredux.lua 12

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  fannkuchredux.lua 12

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  fannkuchredux.lua 12
