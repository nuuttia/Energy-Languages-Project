compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "~/lua_local/bin/lua  fasta.lua-3.lua 25000000" Lua fasta

run:
	~/lua_local/bin/lua  fasta.lua-3.lua 25000000

mem:
	/usr/bin/time -v  ~/lua_local/bin/lua  fasta.lua-3.lua 25000000

valgrind:
	valgrind --tool=massif --stacks=yes  l~/lua_local/bin/luaua  fasta.lua-3.lua 25000000
