node_16_path = /usr/local/node-v16.15.1-linux-x64/bin/node
node_7_path = /usr/local/node-v7.9.0-linux-x86/bin/node

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_7_path} mandelbrot.js 16000" JavaScript7 mandelbrot

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_16_path} mandelbrot.js 16000" JavaScript16 mandelbrot

compile:
	cp -L mandelbrot.node mandelbrot.js

run:
	/usr/bin/node mandelbrot.js 16000

mem:
	/usr/bin/time -v /usr/bin/node mandelbrot.js 16000

valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/node mandelbrot.js 16000
