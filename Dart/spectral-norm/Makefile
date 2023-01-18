compile:

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dart-sdk/bin/dart  spectralnorm.dart 5500" Dart spectral-norm

run:
	/usr/local/dart-sdk/bin/dart  spectralnorm.dart 5500

mem:
	/usr/bin/time -v /usr/local/dart-sdk/bin/dart  spectralnorm.dart 5500

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/dart-sdk/bin/dart  spectralnorm.dart 5500
