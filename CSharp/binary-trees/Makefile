compile:
	cp binarytrees.csharpcore-4.csharpcore Program.cs
	${HOME}/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 21" CSharp binary-trees

run:
	${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 21

mem:
	/usr/bin/time -v  ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 21

valgrind:
	valgrind --tool=massif --stacks=yes  ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 21
