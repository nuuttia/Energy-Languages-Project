php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php  -n  fasta.php-3.php 25000000" PHP7 fasta

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path}  -n  fasta.php-3.php 25000000" PHP8 fasta

compile:


run:
	php -n  fasta.php-3.php 25000000

mem:
	/usr/bin/time -v php -n  fasta.php-3.php 25000000

valgrind:
	valgrind --tool=massif --stacks=yes php -n  fasta.php-3.php 25000000
