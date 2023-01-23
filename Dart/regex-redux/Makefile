dart1_path = /usr/local/dart-sdk/bin/dart
dart2_path = /usr/local/new_dart_sdk/dart-sdk/bin/dart

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) regexredux.dart-2.dart 0 < ../../regexredux-input5000000.txt" Dart1 regex-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart2_path) regexredux.dart-2.dart 0 < ../../regexredux-input5000000.txt" Dart2 regex-redux

runOld:
	$(dart1_path)  regexredux.dart-2.dart 0 < ../../regexredux-input5000000.txt

runNew:
	$(dart2_path)  regexredux.dart-2.dart 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v  $(dart1_path)  regexredux.dart-2.dart 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  $(dart1_path)  regexredux.dart-2.dart 0 < ../../regexredux-input5000000.txt
