# How to Nvim with Unreal

Config UEvar.bat path (See the Warning)

UE_gen_compile_commands.bat to get compile_commands.json
> llvm toolchain is required, I install with scoop(so that i can change version by `scoop reset llvm@version`, and must symbolic link `scoop prefix llvm` path to `C:\Program Files\LLVM`)
> If you are not using scoop, just keep llvm install path as `C:\Program Files\LLVM`

```powershell
New-Item -Path C:\Program Files\LLVM -ItemType SymbolicLink -Value {scoop prefix llvm path}
```


Run UErun.bat or UEbuild.bat to run or build project via command line

`.nvim.lua` file provide build and run shortcut for project, put it in Root of project, and add all .bat in PATH(I add PATH in $PROFILE like `$env:Path += ";D:\UnrealEngine\tool"`).
> depend on overseer nvim plugin, install overseer before use it. ( maybe some day i will remove overseer dependency?


> Reference: https://www.youtube.com/watch?v=94FvzO1HVzY
