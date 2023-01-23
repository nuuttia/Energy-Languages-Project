python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO spectralnorm.python3-5.py 5500" Python3_5 spectral-norm

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO spectralnorm.python3-5.py 5500" Python3_10 spectral-norm

compile:
	cp spectralnorm.python3-5.python3 spectralnorm.python3-5.py
	
run:
	python3 -OO spectralnorm.python3-5.py 5500

mem:
	/usr/bin/time -v python3 -OO spectralnorm.python3-5.py 5500
