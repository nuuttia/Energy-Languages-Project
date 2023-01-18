compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dart-sdk/bin/dart  nbody.dart-3.dart 50000000" Dart n-body

run:
	/usr/local/dart-sdk/bin/dart  nbody.dart-3.dart 50000000

mem:
	/usr/bin/time -v /usr/local/dart-sdk/bin/dart  nbody.dart-3.dart 50000000

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/dart-sdk/bin/dart  nbody.dart-3.dart 50000000
