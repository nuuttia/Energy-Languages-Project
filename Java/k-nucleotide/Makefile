compile:
	javac -d . -cp .:./fastutil/fastutil-8.5.11.jar knucleotide.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < knucleotide-input25000000.txt" Java k-nucleotide

run:
	java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < knucleotide-input25000000.txt

mem:
	/usr/bin/time -v  java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  java  -cp .:./fastutil/fastutil-8.5.11 knucleotide 0 < knucleotide-input25000000.txt
