compile:
	
measure:
	export JULIA_NUM_THREADS=4
	sudo ../../RAPL/main "/usr/local/julia-1.3.1/bin/julia -O3  -- fasta.julia-6.julia 25000000" Julia fasta
run:
	export JULIA_NUM_THREADS=4
	/usr/local/julia-1.3.1/bin/julia -O3  -- fasta.julia-6.julia 25000000
mem:
	export JULIA_NUM_THREADS=4
	/usr/bin/time -v  /usr/local/julia-1.3.1/bin/julia -O3  -- fasta.julia-6.julia 25000000
valmem:
	export JULIA_NUM_THREADS=4
	valgrind --tool=massif --stacks=yes  /usr/local/julia-1.3.1/bin/julia -O3  -- fasta.julia-6.julia 25000000
