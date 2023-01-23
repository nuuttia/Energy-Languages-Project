python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO binarytrees.py 21" Python3_5 binary-trees

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO binarytrees.py 21" Python3_10 binary-trees

compile:
	cp binarytrees.python3 binarytrees.py


run:
	python3 -OO binarytrees.py 21

mem:
	/usr/bin/time -v python3 -OO binarytrees.py 21
