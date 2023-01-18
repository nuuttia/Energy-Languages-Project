compile:
	cp fannkuchredux.csharpcore-4.csharpcore Program.cs
	/usr/local/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 12" CSharp fannkuch-redux

run:
	/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 12

mem:
	/usr/bin/time -v  /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 12

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 12
