node_16_path = /usr/local/node-v16.15.1-linux-x64/bin/node
node_7_path = /usr/local/node-v7.9.0-linux-x86/bin/node

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_7_path} spectralnorm.node-2.js 5500" JavaScript7 spectral-norm

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_16_path} spectralnorm.node-2.js 5500" JavaScript16 spectral-norm

compile:
	cp -L spectralnorm.node-2.node spectralnorm.node-2.js

run:
	/usr/bin/node spectralnorm.node-2.js 5500

mem:
	/usr/bin/time -v /usr/bin/node spectralnorm.node-2.js 5500

valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/node spectralnorm.node-2.js 5500
