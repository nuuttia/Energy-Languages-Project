compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dart-sdk/bin/dart --old_gen_heap_size=2048 revcomp.dart-3.dart 0 < ../../revcomp-input25000000.txt" Dart reverse-complement

run:
	/usr/local/dart-sdk/bin/dart --old_gen_heap_size=2048 revcomp.dart-3.dart 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v /usr/local/dart-sdk/bin/dart --old_gen_heap_size=2048 revcomp.dart-3.dart 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/dart-sdk/bin/dart --old_gen_heap_size=2048 revcomp.dart-3.dart 0 < ../../revcomp-input25000000.txt
