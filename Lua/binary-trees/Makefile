compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "~/lua_local/bin/lua  binarytrees.lua-2.lua 21" Lua binary-trees

run:
	~/lua_local/bin/lua  binarytrees.lua-2.lua 21

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  binarytrees.lua-2.lua 21

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  binarytrees.lua-2.lua 21
