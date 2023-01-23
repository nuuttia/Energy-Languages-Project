dart1_path = /usr/local/dart-sdk/bin/dart
dart2_path = /usr/local/new_dart_sdk/dart-sdk/bin/dart

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt" Dart1 k-nucleotide

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart2_path) knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt" Dart2 k-nucleotide

runOld:
	$(dart1_path)  knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt

runNew:
	$(dart2_path)  knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v  $(dart2_path)  knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  $(dart2_path)  knucleotide.dart-2.dart 0 < ../../knucleotide-input25000000.txt
