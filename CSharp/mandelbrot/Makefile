compile:
	cp mandelbrot.csharpcore-5.csharpcore Program.cs
	${HOME}/dotnet/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 16000" CSharp mandelbrot

run:
	${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 16000

mem:
	/usr/bin/time -v ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 16000

valgrind:
	valgrind --tool=massif --stacks=yes ${HOME}/dotnet/dotnet ./bin/Release/netcoreapp3.1/tmp.dll 16000
