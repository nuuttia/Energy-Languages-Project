lua_5_3 = /usr/local/lua_local/bin/lua
lua_5_4 = /usr/local/lua-5.4.4/bin/lua

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_3}  pidigits.lua-5.lua 10000" Lua5_3 pidigits

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_4}  pidigits.lua-5.lua 10000" Lua5_4 pidigits


compile:

run:
	~/lua_local/bin/lua  pidigits.lua-5.lua 10000

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  pidigits.lua-5.lua 10000


valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  pidigits.lua-5.lua 10000

