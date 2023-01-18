compile:

xmeasure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dart-sdk/bin/dart  pidigits.dart 2000" Dart pidigits

run:
	/usr/local/dart-sdk/bin/dart  pidigits.dart 2000

mem:
	/usr/bin/time -v  /usr/local/dart-sdk/bin/dart  pidigits.dart 2000

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/local/dart-sdk/bin/dart  pidigits.dart 2000
