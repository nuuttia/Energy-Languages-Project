python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO knucleotide.python3-3.py 0 < ../../knucleotide-input25000000.txt" Python3_5 k-nucleotide

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO knucleotide.python3-3.py 0 < ../../knucleotide-input25000000.txt" Python3_10 k-nucleotide

compile:
	cp knucleotide.python3-3.python3 knucleotide.python3-3.py
	
run:
	python3 -OO knucleotide.python3-3.py 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v python3 -OO knucleotide.python3-3.py 0 < ../../knucleotide-input25000000.txt
