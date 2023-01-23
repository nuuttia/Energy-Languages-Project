node_16_path = /usr/local/node-v16.15.1-linux-x64/bin/node
node_7_path = /usr/local/node-v7.9.0-linux-x86/bin/node

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_7_path} regexredux.node-2.js 0 < ../../regexredux-input5000000.txt" JavaScript7 regex-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_16_path} regexredux.node-2.js 0 < ../../regexredux-input5000000.txt" JavaScript16 regex-redux

compile:
	cp -L regexredux.node-2.node regexredux.node-2.js

run:
	/usr/bin/node regexredux.node-2.js 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v /usr/bin/node regexredux.node-2.js 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/node regexredux.node-2.js 0 < ../../regexredux-input5000000.txt
