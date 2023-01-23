java8_path = /usr/local/jdk1.8.0_121/bin/
java_library_path = $(shell pwd)
compileOld:
	cp pidigits.java-2.java pidigits.java
	/usr/local/jdk1.8.0_121/bin/javac -d .  pidigits.java

compileNew:
	cp pidigits.java-2.java pidigits.java
	javac -d .  pidigits.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/jdk1.8.0_121/bin/java   pidigits 10000" Java8 pidigits

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java -Djava.library.path=Include/java pidigits 10000" Java19 pidigits
	
run:
	/usr/local/jdk1.8.0_121/bin/java -Djava.library.path=Include/java  pidigits 10000

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java -Djava.library.path=Include/java  pidigits 10000

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java -Djava.library.path=Include/java  pidigits 10000

