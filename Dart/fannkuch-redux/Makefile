dart1_path = /usr/local/dart-sdk/bin/dart
dart2_path = /usr/local/new_dart_sdk/dart-sdk/bin/dart

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) fannkuchredux.dart-2.dart 12" Dart1 fannkuch-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart2_path) fannkuchredux.dart-2.dart 12" Dart2 fannkuch-redux

runOld:
	$(dart1_path)  fannkuchredux.dart-2.dart 12

runNew:
	$(dart2_path)  fannkuchredux.dart-2.dart 12

mem:
	/usr/bin/time -v $(dart1_path)  fannkuchredux.dart-2.dart 12

valgrind:
	valgrind --tool=massif --stacks=yes $(dart1_path)  fannkuchredux.dart-2.dart 12
