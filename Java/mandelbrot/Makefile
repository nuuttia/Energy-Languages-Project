java8_path = /home/andremalheiro/Documentos/jdk1.8.0_121/bin/

compileOld:
	cp mandelbrot.java-2.java mandelbrot.java
	${java8_path}javac -d .  mandelbrot.java

compileNew:
	cp mandelbrot.java-2.java mandelbrot.java
	javac -d .  mandelbrot.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${java8_path}java mandelbrot 16000" Java8 mandelbrot

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java mandelbrot 16000" Java19 mandelbrot

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   mandelbrot 16000

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   mandelbrot 16000

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   mandelbrot 16000
