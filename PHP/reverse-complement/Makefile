php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php -n -d memory_limit=1024M revcomp.php-3.php 0 < ../../revcomp-input25000000.txt" PHP7 reverse-complement

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path} -n -d memory_limit=1024M revcomp.php-3.php 0 < ../../revcomp-input25000000.txt" PHP8 reverse-complement

compile:

run:
	php -n -d memory_limit=1024M revcomp.php-3.php 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v php -n -d memory_limit=1024M revcomp.php-3.php 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes php -n -d memory_limit=1024M revcomp.php-3.php 0 < ../../revcomp-input25000000.txt



