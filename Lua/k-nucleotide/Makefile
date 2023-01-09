compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "~/lua_local/bin/lua  knucleotide.lua-2.lua 0 < ../../knucleotide-input25000000.txt" Lua k-nucleotide

run:
	~/lua_local/bin/lua  knucleotide.lua-2.lua 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  knucleotide.lua-2.lua 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  knucleotide.lua-2.lua 0 < ../../knucleotide-input25000000.txt
