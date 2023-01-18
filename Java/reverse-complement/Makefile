compile:
	cp revcomp.java-3.java revcomp.java
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/javac -d .  revcomp.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   revcomp 0 < ../../revcomp-input25000000.txt" Java reverse-complement

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   revcomp 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   revcomp 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   revcomp 0 < ../../revcomp-input25000000.txt
