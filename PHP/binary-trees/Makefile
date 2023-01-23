php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php -n -d memory_limit=4096M binarytrees.php-5.php 21" PHP7 binary-trees

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path} -n -d memory_limit=4096M binarytrees.php-5.php 21" PHP8 binary-trees

compile:

run:
	php -n -d memory_limit=4096M binarytrees.php-5.php 21

mem:
	/usr/bin/time -v php -n -d memory_limit=4096M binarytrees.php-5.php 21

valgrind:
	valgrind --tool=massif --stacks=yes php -n -d memory_limit=4096M binarytrees.php-5.php 21
