compile:
	cp regexredux.csharpcore-4.csharpcore Program.cs
	/usr/local/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../regexredux-input5000000.txt" CSharp regex-redux

run:
	/usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../regexredux-input5000000.txt
