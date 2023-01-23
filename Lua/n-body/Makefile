lua_5_3 = /usr/local/lua_local/bin/lua
lua_5_4 = /usr/local/lua-5.4.4/bin/lua

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_3}  nbody.lua-2.lua 50000000" Lua5_3 n-body

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_4}  nbody.lua-2.lua 50000000" Lua5_4 n-body


compile:


run:
	~/lua_local/bin/lua  nbody.lua-2.lua 50000000

mem:
	/usr/bin/time -v  ~/lua_local/bin/lua  nbody.lua-2.lua 50000000

valgrind:
	valgrind --tool=massif --stacks=yes  ~/lua_local/bin/lua  nbody.lua-2.lua 50000000
