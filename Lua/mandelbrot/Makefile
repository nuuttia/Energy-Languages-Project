compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "~/lua_local/bin/lua  mandelbrot.lua-6.lua 16000" Lua mandelbrot

run:
	~/lua_local/bin/lua  mandelbrot.lua-6.lua 16000

mem:
	/usr/bin/time -v  ~/lua_local/bin/lua  mandelbrot.lua-6.lua 16000

valgrind:
	valgrind --tool=massif --stacks=yes  ~/lua_local/bin/lua  mandelbrot.lua-6.lua 16000
