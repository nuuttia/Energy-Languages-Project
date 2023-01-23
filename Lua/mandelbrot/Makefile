lua_5_3 = /usr/local/lua_local/bin/lua
lua_5_4 = /usr/local/lua-5.4.4/bin/lua

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_3}  mandelbrot.lua-6.lua 16000" Lua5_3 mandelbrot

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${lua_5_4}  mandelbrot.lua-6.lua 16000" Lua5_4 mandelbrot


compile:


run:
	~/lua_local/bin/lua  mandelbrot.lua-6.lua 16000

mem:
	/usr/bin/time -v  ~/lua_local/bin/lua  mandelbrot.lua-6.lua 16000

valgrind:
	valgrind --tool=massif --stacks=yes  ~/lua_local/bin/lua  mandelbrot.lua-6.lua 16000
