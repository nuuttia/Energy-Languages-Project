dart1_path = /usr/local/dart-sdk/bin/dart
dart2_path = /usr/local/new_dart_sdk/dart-sdk/bin/dart

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) nbody.dart-3.dart 50000000" Dart1 n-body

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart2_path) nbody.dart-3.dart 50000000" Dart2 n-body

runOld:
	$(dart1_path)  nbody.dart-3.dart 50000000

runNew:
	$(dart2_path)  nbody.dart-3.dart 50000000

mem:
	/usr/bin/time -v $(dart1_path)  nbody.dart-3.dart 50000000

valgrind:
	valgrind --tool=massif --stacks=yes $(dart1_path)  nbody.dart-3.dart 50000000
