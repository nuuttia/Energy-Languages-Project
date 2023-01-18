compile:
	cp nbody.java-4.java nbody.java
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/javac -d .  nbody.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   nbody 50000000" Java n-body

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   nbody 50000000

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   nbody 50000000

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   nbody 50000000
