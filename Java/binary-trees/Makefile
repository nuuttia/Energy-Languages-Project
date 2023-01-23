java8_path = /home/andremalheiro/Documentos/jdk1.8.0_121/bin/

compileOld:
	cp binarytrees.java-7.java binarytrees.java
	${java8_path}javac -d .  binarytrees.java

compileNew:
	cp binarytrees.java-7.java binarytrees.java
	javac -d .  binarytrees.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${java8_path}java binarytrees 21" Java8 binary-trees

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java binarytrees 21" Java19 binary-trees

run:
	java binarytrees 21

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java binarytrees 21

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java binarytrees 21
