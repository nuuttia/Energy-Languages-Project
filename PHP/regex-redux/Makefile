php_8_path = /usr/local/php-8.2.1/bin/php

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "php -d memory_limit=512M regexredux.php 0 < ../../regexredux-input5000000.txt" PHP7 regex-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${php_8_path} -d memory_limit=512M regexredux.php 0 < ../../regexredux-input5000000.txt" PHP8 regex-redux

compile:

run:
	php -d memory_limit=512M regexredux.php 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v php -d memory_limit=512M regexredux.php 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes php -d memory_limit=512M regexredux.php 0 < ../../regexredux-input5000000.txt
