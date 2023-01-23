lua_5_3 = /usr/local/lua_local/bin/lua
lua_5_4 = /usr/local/lua-5.4.4/bin/lua

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_3}  binarytrees.lua-2.lua 21" Lua5_3 binary-trees

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_4}  binarytrees.lua-2.lua 21" Lua5_4 binary-trees

compile:

run:
	/usr/local/lua_local/bin/lua  binarytrees.lua-2.lua 21

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  binarytrees.lua-2.lua 21

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  binarytrees.lua-2.lua 21
