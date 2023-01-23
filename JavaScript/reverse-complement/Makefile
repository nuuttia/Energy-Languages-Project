node_16_path = /usr/local/node-v16.15.1-linux-x64/bin/node
node_7_path = /usr/local/node-v7.9.0-linux-x86/bin/node

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_7_path} revcomp.node-7.js 0 < ../../revcomp-input25000000.txt" JavaScript7 reverse-complement

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_16_path} revcomp.node-7.js 0 < ../../revcomp-input25000000.txt" JavaScript16 reverse-complement

compile:
	cp -L revcomp.node-7.node revcomp.node-7.js

run:
	/usr/bin/node revcomp.node-7.js 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v /usr/bin/node revcomp.node-7.js 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/node revcomp.node-7.js 0 < ../../revcomp-input25000000.txt
