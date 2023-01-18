compile:
	cp binarytrees.csharpcore-4.csharpcore Program.cs
	/usr/local/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 21" CSharp binary-trees

run:
	/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 21

mem:
	/usr/bin/time -v  /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 21

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 21
