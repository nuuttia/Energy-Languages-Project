node_16_path = /usr/local/node-v16.15.1-linux-x64/bin/node
node_7_path = /usr/local/node-v7.9.0-linux-x86/bin/node

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_7_path} binarytrees.js 21" JavaScript7 binary-trees

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_16_path} binarytrees.js 21" JavaScript16 binary-trees

compile:
	cp -L binarytrees.node binarytrees.js


run:
	/usr/local/node-v7.9.0-linux-x86/bin/node binarytrees.js 21

mem:
	/usr/bin/time -v /usr/bin/node binarytrees.js 21

valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/node binarytrees.js 21
