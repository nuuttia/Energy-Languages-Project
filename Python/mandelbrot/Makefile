python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO mandelbrot.python3-7.py 16000" Python3_5 mandelbrot

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO mandelbrot.python3-7.py 16000" Python3_10 mandelbrot

compile:
	cp mandelbrot.python3-7.python3 mandelbrot.python3-7.py

run:
	python3 -OO mandelbrot.python3-7.py 16000

mem:
	/usr/bin/time -v python3 -OO mandelbrot.python3-7.py 16000
