compile:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/javac -d .  fannkuchredux.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fannkuchredux 12" Java fannkuch-redux

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fannkuchredux 12

mem:
	/usr/bin/time -v  /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fannkuchredux 12

valgrind:
	valgrind --tool=massif --stacks=yes  /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fannkuchredux 12
