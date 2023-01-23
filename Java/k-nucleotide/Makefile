java8_path = /home/andremalheiro/Documentos/jdk1.8.0_121/bin/

compileOld:
	${java8_path}javac -d . -cp .:./fastutil/fastutil-8.5.11.jar  knucleotide.java

compileNew:
	javac -d . -cp .:./fastutil/fastutil-8.5.11.jar  knucleotide.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${java8_path}java knucleotide -cp .:./fastutil/fastutil-8.5.11.jar knucleotide 0 < ../../knucleotide-input25000000.txt" Java8 k-nucleotide
measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java knucleotide -cp .:./fastutil/fastutil-8.5.11.jar knucleotide 0 < ../../knucleotide-input25000000.txt" Java19 k-nucleotide

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v  /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java  -cp .:./fastutil/fastutil-8.5.11.jar knucleotide 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < ../../knucleotide-input25000000.txt
