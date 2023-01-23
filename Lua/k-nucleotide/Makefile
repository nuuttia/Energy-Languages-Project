lua_5_3 = /usr/local/lua_local/bin/lua
lua_5_4 = /usr/local/lua-5.4.4/bin/lua

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_3}  knucleotide.lua-2.lua 0 < ../../knucleotide-input25000000.txt" Lua5_3 k-nucleotide

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_4}  knucleotide.lua-2.lua 0 < ../../knucleotide-input25000000.txt" Lua5_4 k-nucleotide


compile:


run:
	~/lua_local/bin/lua  knucleotide.lua-2.lua 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  knucleotide.lua-2.lua 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  knucleotide.lua-2.lua 0 < ../../knucleotide-input25000000.txt
