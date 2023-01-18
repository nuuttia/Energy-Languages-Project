compile:
	cp spectralnorm.csharpcore-3.csharpcore Program.cs
	/usr/local/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 5500" CSharp spectral-norm

run:
	/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 5500

mem:
	/usr/bin/time -v  /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 5500

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 5500
