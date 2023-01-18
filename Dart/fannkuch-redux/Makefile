compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dart-sdk/bin/dart  fannkuchredux.dart-2.dart 12" Dart fannkuch-redux

run:
	/usr/local/dart-sdk/bin/dart  fannkuchredux.dart-2.dart 12

mem:
	/usr/bin/time -v /usr/local/dart-sdk/bin/dart  fannkuchredux.dart-2.dart 12

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/dart-sdk/bin/dart  fannkuchredux.dart-2.dart 12
