compile:
	cp regexredux.csharpcore-4.csharpcore Program.cs
	${HOME}/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../regexredux-input5000000.txt" CSharp regex-redux

run:
	${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../regexredux-input5000000.txt
