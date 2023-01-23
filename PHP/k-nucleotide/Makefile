php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php -d memory_limit=1024M knucleotide.php-4.php 0 < ../../knucleotide-input25000000.txt" PHP7 k-nucleotide

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path} -d memory_limit=1024M knucleotide.php-4.php 0 < ../../knucleotide-input25000000.txt" PHP8 k-nucleotide


compile:

run:
	php -d memory_limit=1024M knucleotide.php-4.php 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v php -d memory_limit=1024M knucleotide.php-4.php 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes php -d memory_limit=1024M knucleotide.php-4.php 0 < ../../knucleotide-input25000000.txt
