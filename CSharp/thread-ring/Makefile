dotnet6_path = /usr/local/dotnet-6.0.404/dotnet
dotnet3_path = /usr/local/dotnet/dotnet

compileNew:
	rm -rf bin obj
	cp threadring.csharpcore Program.cs
	cp ../csproj.new tmp.csproj
	$(dotnet6_path) build -c Release

compileOld:	
	rm -rf bin obj
	cp threadring.csharpcore Program.cs
	cp ../csproj.old tmp.csproj
	$(dotnet3_path) build -c Release

measureOld:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dotnet3_path) ./bin/Release/netcoreapp3.1/tmp.dll 50000000" CSharp3 thread-ring

measureNew:
	sudo modprobe msr
	sudo ../../RAPL/main "$(dotnet6_path) ./bin/Release/netcoreapp6.0/tmp.dll 50000000" CSharp6 thread-ring

runOld:
	$(dotnet3_path) ./bin/Release/netcoreapp3.1/tmp.dll 50000000

runNew:
	$(dotnet6_path) ./bin/Release/netcoreapp6.0/tmp.dll 50000000