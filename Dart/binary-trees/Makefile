compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dart-sdk/bin/dart binarytrees.dart 21" Dart binary-trees

run:
	/usr/local/dart-sdk/bin/dart  binarytrees.dart 21

mem:
	/usr/bin/time -v  /usr/local/dart-sdk/bin/dart  binarytrees.dart 21

valgrind:
	valgrind --tool=massif --stacks=yes  dart  binarytrees.dart 21
