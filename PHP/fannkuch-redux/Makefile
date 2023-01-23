php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php fannkuchredux.php-3.php 12" PHP7 fannkuch-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path} fannkuchredux.php-3.php 12" PHP8 fannkuch-redux

compile:

run:
	php  fannkuchredux.php-3.php 12

mem:
	/usr/bin/time -v php  fannkuchredux.php-3.php 12

valgrind:
	valgrind --tool=massif --stacks=yes php  fannkuchredux.php-3.php 12
