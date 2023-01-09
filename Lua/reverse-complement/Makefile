compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "~/lua_local/bin/lua  revcomp.lua-2.lua 0 < ../../revcomp-input25000000.txt" Lua reverse-complement

run:
	~/lua_local/bin/lua  revcomp.lua-2.lua 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  revcomp.lua-2.lua 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  revcomp.lua-2.lua 0 < ../../revcomp-input25000000.txt
