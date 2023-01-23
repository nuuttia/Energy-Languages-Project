node_16_path = /usr/local/node-v16.15.1-linux-x64/bin/node
node_7_path = /usr/local/node-v7.9.0-linux-x86/bin/node

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_7_path} nbody.js 50000000" JavaScript7 n-body

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_16_path} nbody.js 50000000" JavaScript16 n-body

compile:
	cp -L nbody.node nbody.js

run:
	/usr/bin/node nbody.js 50000000

mem:
	/usr/bin/time -v  /usr/bin/node nbody.js 50000000

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/bin/node nbody.js 50000000
