lua_5_3 = /usr/local/lua_local/bin/lua
lua_5_4 = /usr/local/lua-5.4.4/bin/lua

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_3}  fasta.lua-3.lua 25000000" Lua5_3 fasta

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_4}  fasta.lua-3.lua 25000000" Lua5_4 fasta


compile:


run:
	~/lua_local/bin/lua  fasta.lua-3.lua 25000000

mem:
	/usr/bin/time -v  ~/lua_local/bin/lua  fasta.lua-3.lua 25000000

valgrind:
	valgrind --tool=massif --stacks=yes  l~/lua_local/bin/luaua  fasta.lua-3.lua 25000000
