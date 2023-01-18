compile:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/javac -d . -cp .:./fastutil/fastutil-8.5.11.jar knucleotide.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < ../../knucleotide-input25000000.txt" Java k-nucleotide

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v  /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < ../../knucleotide-input25000000.txt
