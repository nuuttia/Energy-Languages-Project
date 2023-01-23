php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php -n  spectralnorm.php 5500" PHP7 spectral-norm

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path} -n  spectralnorm.php 5500" PHP8 spectral-norm

compile:


run:
	php -n  spectralnorm.php 5500

mem:
	/usr/bin/time -v php -n  spectralnorm.php 5500

valgrind:
	valgrind --tool=massif --stacks=yes php -n  spectralnorm.php 5500
