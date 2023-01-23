java8_path = /home/andremalheiro/Documentos/jdk1.8.0_121/bin/

compileOld:
	cp revcomp.java-3.java revcomp.java
	${java8_path}javac -d .  revcomp.java

compileNew:
	cp revcomp.java-3.java revcomp.java
	javac -d .  revcomp.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${java8_path}java revcomp 0 < ../../revcomp-input25000000.txt" Java8 reverse-complement

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java revcomp 0 < ../../revcomp-input25000000.txt" Java19 reverse-complement

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   revcomp 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   revcomp 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   revcomp 0 < ../../revcomp-input25000000.txt
