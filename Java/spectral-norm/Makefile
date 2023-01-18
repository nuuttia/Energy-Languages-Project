compile:
	cp spectralnorm.java-2.java spectralnorm.java
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/javac -d .  spectralnorm.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   spectralnorm 5500" Java spectral-norm

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   spectralnorm 5500

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   spectralnorm 5500

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   spectralnorm 5500
