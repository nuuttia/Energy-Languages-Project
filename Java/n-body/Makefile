java8_path = /home/andremalheiro/Documentos/jdk1.8.0_121/bin/

compileOld:
	cp nbody.java-4.java nbody.java
	${java8_path}javac -d .  nbody.java

compileNew:
	cp nbody.java-4.java nbody.java
	javac -d .  nbody.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${java8_path}java nbody 50000000" Java8 n-body

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java nbody 50000000" Java19 n-body

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   nbody 50000000

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   nbody 50000000

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   nbody 50000000
