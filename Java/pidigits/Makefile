compile:
	cp pidigits.java-2.java pidigits.java
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/javac -d .  pidigits.java
xmeasure:
	sudo modprobe msr
	sudo ../../RAPL/main "/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java -Djava.library.path=Include/java  pidigits 10000" Java pidigits

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java -Djava.library.path=Include/java  pidigits 10000

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java -Djava.library.path=Include/java  pidigits 10000

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java -Djava.library.path=Include/java  pidigits 10000

