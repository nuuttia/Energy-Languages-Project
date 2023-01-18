compile:
	cp chameneosredux.csharpcore Program.cs
	/usr/local/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 6000000"

run:
	/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 6000000

mem:
	/usr/bin/time -v /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 6000000

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 6000000
