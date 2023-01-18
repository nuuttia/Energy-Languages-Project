compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dart-sdk/bin/dart  knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt" Dart k-nucleotide

run:
	/usr/local/dart-sdk/bin/dart  knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v  /usr/local/dart-sdk/bin/dart  knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/local/dart-sdk/bin/dart  knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt
