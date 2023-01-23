python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO nbody.py 50000000" Python3_5 n-body

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO nbody.py 50000000" Python3_10 n-body

compile:
	cp nbody.python3 nbody.py

run:
	python3 -OO nbody.py 50000000

mem:
	/usr/bin/time -v python3 -OO nbody.py 50000000
