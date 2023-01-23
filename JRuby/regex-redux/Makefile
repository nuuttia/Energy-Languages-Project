jruby_9_1_7_path = /usr/local/jruby-9.1.7.0/bin/jruby
jruby_9_4_path = /usr/local/jruby-9.4.0.0/bin/jruby

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${jruby_9_1_7_path} -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m regexredux.rb 0 < ../../regexredux-input5000000.txt" JRuby9_1 regex-redux

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${jruby_9_4_path} -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m regexredux.rb 0 < ../../regexredux-input5000000.txt" JRuby9_4 regex-redux
	
compile:
	cp regexredux.jruby-2.jruby regexredux.rb

run:
	/usr/local/jruby-9.1.7.0/bin/jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m regexredux.rb 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v  /usr/local/jruby-9.1.7.0/bin/jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m regexredux.rb 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/local/jruby-9.1.7.0/bin/jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m regexredux.rb 0 < ../../regexredux-input5000000.txt
