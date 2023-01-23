php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php -n  nbody.php-3.php 50000000" PHP7 n-body

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path} -n  nbody.php-3.php 50000000" PHP8 n-body

compile:


run:
	php -n  nbody.php-3.php 50000000

mem:
	/usr/bin/time -v  php -n  nbody.php-3.php 50000000

valgrind:
	valgrind --tool=massif --stacks=yes  php -n  nbody.php-3.php 50000000
