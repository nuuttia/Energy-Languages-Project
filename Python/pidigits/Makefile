python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO pidigits.python3-2.py 10000" Python3_5 pidigits

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO pidigits.python3-2.py 10000" Python3_10 pidigits

compile:
	cp pidigits.python3-2.python3 pidigits.python3-2.py

run:
	python3 -OO pidigits.python3-2.py 10000
mem:
	/usr/bin/time -v python3 -OO pidigits.python3-2.py 10000
