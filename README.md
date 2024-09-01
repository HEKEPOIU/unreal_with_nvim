# How to Nvim with Unreal
This base command will generate the sin file for [csharp-language-server](https://github.com/razzmatazz/csharp-language-server).
and compile_commands.json for [clangd](https://clangd.llvm.org).


``` sh
#I use Alacritty with msys2 in windows, but powershell should be work too!

#Generate sin file for c#.
${UnrealPath}/Engine/Binaries/DotNET/UnrealBuildTool/UnrealBuildTool.exe -ProjectFiles Development Win64 ${UnrealUprojectPath} -waitmutex -NoHotReload
#SomeTime You may need to dotnet restore(not sure about the reason).

#Generate compile_commands
${UnrealPath}/Engine/Binaries/DotNET/UnrealBuildTool/UnrealBuildTool.exe -GenerateClangDatabase Development Win64 ${UnrealUprojectPath} -waitmutex -NoHotReload 
mv ${UnrealPath}/compile_commands.json ${ProjectPath} 
```
