dotnet6_path = /usr/local/dotnet-6.0.404/dotnet
dotnet3_path = /usr/local/dotnet/dotnet

compileNew:
	rm -rf bin obj
	cp knucleotide.csharpcore-6.csharpcore Program.cs
	cp ../csproj.new tmp.csproj
	$(dotnet6_path) build -c Release

compileOld:
	rm -rf bin obj
	cp knucleotide.csharpcore-6.csharpcore Program.cs
	cp ../csproj.old tmp.csproj
	$(dotnet3_path) build -c Release

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dotnet3_path) ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../knucleotide-input25000000.txt" CSharp3 k-nucleotide

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dotnet6_path) ./bin/Release/netcoreapp6.0/tmp.dll 0 < ../../knucleotide-input25000000.txt" CSharp6 k-nucleotide

runOld:
	$(dotnet3_path) ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../knucleotide-input25000000.txt

runNew:
	$(dotnet6_path) ./bin/Release/netcoreapp6.0/tmp.dll 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v $(dotnet3_path) ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes $(dotnet3_path) ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../knucleotide-input25000000.txt
