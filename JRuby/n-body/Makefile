jruby_9_1_7_path = /usr/local/jruby-9.1.7.0/bin/jruby
jruby_9_4_path = /usr/local/jruby-9.4.0.0/bin/jruby

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "${jruby_9_1_7_path} -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m nbody.rb 50000000" JRuby9_1 n-body

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "${jruby_9_4_path} -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m nbody.rb 50000000" JRuby9_4 n-body

compile:
	cp nbody.jruby-2.jruby nbody.rb

run:
	/usr/local/jruby-9.1.7.0/bin/jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m nbody.rb 50000000

mem:
	/usr/bin/time -v /usr/local/jruby-9.1.7.0/bin/jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m nbody.rb 50000000

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/jruby-9.1.7.0/bin/jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m nbody.rb 50000000
