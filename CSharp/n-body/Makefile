compile:
	cp nbody.csharpcore-3.csharpcore Program.cs
	${HOME}/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 50000000" CSharp n-body

run:
	${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 50000000

mem:
	/usr/bin/time -v  ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 50000000

valgrind:
	valgrind --tool=massif --stacks=yes  ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 50000000
