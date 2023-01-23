python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO revcomp.python3-6.py 0 < ../../revcomp-input25000000.txt" Python3_5 reverse-complement

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO revcomp.python3-6.py 0 < ../../revcomp-input25000000.txt" Python3_10 reverse-complement

compile:
	cp revcomp.python3-6.python3 revcomp.python3-6.py

run:
	python3 -OO revcomp.python3-6.py 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v python3 -OO revcomp.python3-6.py 0 < ../../revcomp-input25000000.txt

