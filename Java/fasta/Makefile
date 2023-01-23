java8_path = /home/andremalheiro/Documentos/jdk1.8.0_121/bin/

compileOld:
	cp fasta.java-5.java fasta.java
	${java8_path}javac -d .  fasta.java

compileNew:
	cp fasta.java-5.java fasta.java
	javac -d .  fasta.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${java8_path}java fasta 25000000" Java8 fasta

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java fasta 25000000" Java19 fasta

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fasta 25000000

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fasta 25000000

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   fasta 25000000
