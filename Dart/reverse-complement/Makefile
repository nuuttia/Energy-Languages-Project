dart1_path = /usr/local/dart-sdk/bin/dart
dart2_path = /usr/local/new_dart_sdk/dart-sdk/bin/dart

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) revcomp.dart-3.dart  0 < ../../revcomp-input25000000.txt" Dart1 reverse-complement

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart2_path) --old_gen_heap_size=2048 revcomp.dart-3.dart  0 < ../../revcomp-input25000000.txt" Dart2 reverse-complement

runOld:
	$(dart1_path) --old_gen_heap_size=2048 revcomp.dart-3.dart  0 < ../../revcomp-input25000000.txt

runNew:
	$(dart2_path) --old_gen_heap_size=2048  revcomp.dart-3.dart  0 < ../../revcomp-input25000000.txt


measure:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) --old_gen_heap_size=2048 revcomp.dart-3.dart 0 < ../../revcomp-input25000000.txt" Dart reverse-complement

valgrind:
	valgrind --tool=massif --stacks=yes $(dart1_path) --old_gen_heap_size=2048 revcomp.dart-3.dart 0 < ../../revcomp-input25000000.txt
