python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO fannkuchredux.python3-4.py 12" Python3_5 fannkuch-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO fannkuchredux.python3-4.py 12" Python3_10 fannkuch-redux

compile:
	cp fannkuchredux.python3-4.python3 fannkuchredux.python3-4.py


run:
	python3 -OO fannkuchredux.python3-4.py 12
mem:
	/usr/bin/time -v python3 -OO fannkuchredux.python3-4.py 12
