dart1_path = /usr/local/dart-sdk/bin/dart
dart2_path = /usr/local/new_dart_sdk/dart-sdk/bin/dart

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart1_path) spectralnorm.dart 5500" Dart1 spectral-norm

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dart2_path) spectralnorm.dart 5500" Dart2 spectral-norm

runOld:
	$(dart1_path)  spectralnorm.dart 5500

runNew:
	$(dart2_path)  spectralnorm.dart 5500

mem:
	/usr/bin/time -v $(dart1_path)  spectralnorm.dart 5500

valgrind:
	valgrind --tool=massif --stacks=yes $(dart1_path)  spectralnorm.dart 5500
