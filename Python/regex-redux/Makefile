python_3_5_path = /usr/local/old_python/bin/python3

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${python_3_5_path} -OO regexredux.py 0 < ../../regexredux-input5000000.txt" Python3_5 regex-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "python3 -OO regexredux.py 0 < ../../regexredux-input5000000.txt" Python3_10 regex-redux

compile:
	cp regexredux.python3 regexredux.py

run:
	python3 -OO regexredux.py 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v python3 -OO regexredux.py 0 < ../../regexredux-input5000000.txt
