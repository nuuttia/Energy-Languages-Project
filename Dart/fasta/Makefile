compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dart-sdk/bin/dart  fasta.dart 25000000" Dart fasta

run:
	/usr/local/dart-sdk/bin/dart  fasta.dart 25000000

mem:
	/usr/bin/time -v  /usr/local/dart-sdk/bin/dart  fasta.dart 25000000

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/local/dart-sdk/bin/dart  fasta.dart 25000000
