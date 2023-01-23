node_16_path = /usr/local/node-v16.15.1-linux-x64/bin/node
node_7_path = /usr/local/node-v7.9.0-linux-86/xbin/node

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_7_path} fasta.node-4.js 25000000" JavaScript7 fasta

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_16_path} fasta.node-4.js 25000000" JavaScript16 fasta

compile:
	cp -L fasta.node-4.node fasta.node-4.js

run:
	/usr/bin/node fasta.node-4.js 25000000

mem:
	/usr/bin/time -v /usr/bin/node fasta.node-4.js 25000000


valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/node fasta.node-4.js 25000000

