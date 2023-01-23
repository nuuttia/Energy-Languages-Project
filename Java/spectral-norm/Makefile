java8_path = /home/andremalheiro/Documentos/jdk1.8.0_121/bin/

compileOld:
	cp spectralnorm.java-2.java spectralnorm.java
	${java8_path}javac -d .  spectralnorm.java

compileNew:
	cp spectralnorm.java-2.java spectralnorm.java
	javac -d .  spectralnorm.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${java8_path}java spectralnorm 5500" Java8 spectral-norm

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java spectralnorm 5500" Java19 spectral-norm

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   spectralnorm 5500

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   spectralnorm 5500

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   spectralnorm 5500
