node_16_path = /usr/local/node-v16.15.1-linux-x64/bin/node
node_7_path = /usr/local/node-v7.9.0-linux-x86/bin/node

compile:
	cp -L fannkuchredux.node-4.node fannkuchredux.node-4.js

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_7_path} fannkuchredux.node-4.js 12" JavaScript7 fannkuch-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_16_path} fannkuchredux.node-4.js 12" JavaScript16 fannkuch-redux

run:
	/usr/bin/node fannkuchredux.node-4.js 12

mem:
	/usr/bin/time -v /usr/bin/node fannkuchredux.node-4.js 12

valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/node fannkuchredux.node-4.js 12
