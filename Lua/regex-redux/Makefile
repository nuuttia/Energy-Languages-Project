compile:

xmeasure:
	sudo modprobe msr
	sudo ../../RAPL/main "~/lua_local/bin/lua  regexredux.lua-2.lua 0 < ../../regexredux-input5000000.txt" Lua regex-redux

run:
	~/lua_local/bin/lua  regexredux.lua-2.lua 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v ~/lua_local/bin/lua  regexredux.lua-2.lua 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ~/lua_local/bin/lua  regexredux.lua-2.lua 0 < ../../regexredux-input5000000.txt
