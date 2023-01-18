compile:
	cp fasta.java-5.java fasta.java
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/javac -d .  fasta.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fasta 25000000" Java fasta

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fasta 25000000

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fasta 25000000

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fasta 25000000
