dart1_path = /usr/local/dart-sdk/bin/dart
dart2_path = /usr/local/new_dart_sdk/dart-sdk/bin/dart

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) binarytrees.dart 21" Dart1 binary-trees

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart2_path) binarytrees.dart 21" Dart2 binary-trees

runOld:
	$(dart1_path)  binarytrees.dart 21

runNew:
	$(dart2_path)  binarytrees.dart 21

mem:
	/usr/bin/time -v  $(dart1_path)  binarytrees.dart 21

valgrind:
	valgrind --tool=massif --stacks=yes  dart  binarytrees.dart 21
