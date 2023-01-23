node_16_path = /usr/local/node-v16.15.1-linux-x64/bin/node
node_7_path = /usr/local/node-v7.9.0-linux-x86/bin/node

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_7_path} knucleotide.node-2.js 0 < ../../knucleotide-input25000000.txt" JavaScript7 k-nucleotide

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${node_16_path} knucleotide.node-2.js 0 < ../../knucleotide-input25000000.txt" JavaScript16 k-nucleotide

compile:
	cp -L knucleotide.node-2.node knucleotide.node-2.js

run:
	/usr/bin/node knucleotide.node-2.js 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v /usr/bin/node knucleotide.node-2.js 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/node knucleotide.node-2.js 0 < ../../knucleotide-input25000000.txt
