dart1_path = /usr/local/dart-sdk/bin/dart
dart2_path = /usr/local/new_dart_sdk/dart-sdk/bin/dart

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) mandelbrot.dart 16000" Dart1 mandelbrot

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart2_path) mandelbrot.dart 16000" Dart2 mandelbrot

runOld:
	$(dart1_path)  mandelbrot.dart 16000

runNew:
	$(dart2_path)  mandelbrot.dart 16000

mem:
	/usr/bin/time -v $(dart1_path)  mandelbrot.dart 16000

valgrind:
	valgrind --tool=massif --stacks=yes $(dart1_path)  mandelbrot.dart 16000
