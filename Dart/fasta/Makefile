dart1_path = /usr/local/dart-sdk/bin/dart
dart2_path = /usr/local/new_dart_sdk/dart-sdk/bin/dart

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) fasta.dart 25000000" Dart1 fasta

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart2_path) fasta.dart 25000000" Dart2 fasta

runOld:
	$(dart1_path)  fasta.dart 25000000

runNew:
	$(dart2_path)  fasta.dart 25000000

mem:
	/usr/bin/time -v  $(dart2_path)  fasta.dart 25000000

valgrind:
	valgrind --tool=massif --stacks=yes  $(dart2_path)  fasta.dart 25000000
