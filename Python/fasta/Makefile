python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO fasta.python3-3.py 25000000" Python3_5 fasta

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO fasta.python3-3.py 25000000" Python3_10 fasta

compile:
	cp fasta.python3-3.python3 fasta.python3-3.py


run:
	python3 -OO fasta.python3-3.py 25000000

make mem:
	/usr/bin/time -v  python3 -OO fasta.python3-3.py 25000000
