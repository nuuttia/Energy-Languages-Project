php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php mandelbrot.php-3.php 16000" PHP7 mandelbrot

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path} mandelbrot.php-3.php 16000" PHP8 mandelbrot


compile:


run:
	php --enable-shmop mandelbrot.php-3.php 16000

mem:
	/usr/bin/time -v php  mandelbrot.php-3.php 16000

valgrind:
	valgrind --tool=massif --stacks=yes php  mandelbrot.php-3.php 16000
