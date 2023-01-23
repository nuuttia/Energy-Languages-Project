java8_path = /home/andremalheiro/Documentos/jdk1.8.0_121/bin/

compileOld:
	cp regexredux.java-3.java regexredux.java
	${java8_path}javac -d .  regexredux.java

compileNew:
	cp regexredux.java-3.java regexredux.java
	javac -d .  regexredux.java

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${java8_path}java regexredux 0 < ../../regexredux-input5000000.txt" Java8 regex-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "java regexredux 0 < ../../regexredux-input5000000.txt" Java19 regex-redux

run:
	/home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   regexredux 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   regexredux 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes /home/andremalheiro/Documentos/jdk1.8.0_121/bin/java   regexredux 0 < ../../regexredux-input5000000.txt
