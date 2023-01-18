compile:
	cp binarytrees.java-7.java binarytrees.java
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/javac -d .  binarytrees.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java binarytrees 21" Java binary-trees

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java binarytrees 21

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java binarytrees 21

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java binarytrees 21
