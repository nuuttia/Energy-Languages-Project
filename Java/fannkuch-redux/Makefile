java8_path = /home/andremalheiro/Documentos/jdk1.8.0_121/bin/

compileOld:
	cp fannkuchredux.java fannkuchredux.java
	${java8_path}javac -d .  fannkuchredux.java

compileNew:
	cp fannkuchredux.java fannkuchredux.java
	javac -d .  fannkuchredux.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${java8_path}java fannkuchredux 12" Java8 fannkuch-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java fannkuchredux 12" Java19 fannkuch-redux

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fannkuchredux 12

mem:
	/usr/bin/time -v  /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fannkuchredux 12

valgrind:
	valgrind --tool=massif --stacks=yes  /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fannkuchredux 12
