compile:
	cp revcomp.csharpcore-2.csharpcore Program.cs
	${HOME}/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../revcomp-input25000000.txt" CSharp reverse-complement

run:
	${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v  ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes   ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 0 < ../../revcomp-input25000000.txt
