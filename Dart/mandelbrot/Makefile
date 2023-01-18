compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dart-sdk/bin/dart  mandelbrot.dart 16000" Dart mandelbrot

run:
	/usr/local/dart-sdk/bin/dart  mandelbrot.dart 16000

mem:
	/usr/bin/time -v /usr/local/dart-sdk/bin/dart  mandelbrot.dart 16000

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/dart-sdk/bin/dart  mandelbrot.dart 16000
