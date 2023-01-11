compile:
	cp fasta.csharpcore Program.cs
	${HOME}/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 25000000" CSharp fasta

run:
	${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 25000000

mem:
	/usr/bin/time -v  ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 25000000

valgrind:
	valgrind --tool=massif --stacks=yes  ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 25000000
