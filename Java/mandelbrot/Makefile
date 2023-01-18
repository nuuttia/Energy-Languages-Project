compile:
	cp mandelbrot.java-2.java mandelbrot.java
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/javac -d .  mandelbrot.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   mandelbrot 16000" Java mandelbrot

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   mandelbrot 16000

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   mandelbrot 16000

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   mandelbrot 16000
