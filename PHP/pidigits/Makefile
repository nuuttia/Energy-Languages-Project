php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php -n  pidigits.php-5.php 10000" PHP7 pidigits

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path} -n  pidigits.php-5.php 10000" PHP8 pidigits


compile:

run:
	php -n  pidigits.php-5.php 10000

mem:
	/usr/bin/time -v php -n  pidigits.php-5.php 10000

valgrind:
	valgrind --tool=massif --stacks=yes php -n  pidigits.php-5.php 10000
