@echo Off
set config=%1
if "%config%" == "" (
   set config=Release
)

set version=
if not "%PackageVersion%" == "" (
   set version=-Version %PackageVersion%
)

REM Build
"%programfiles(x86)%\MSBuild\14.0\Bin\MSBuild.exe" YourSolution.sln /p:Configuration="%config%" /m /v:M /fl /flp:LogFile=msbuild.log;Verbosity=Normal /nr:false

REM Package
mkdir Build
call %nuget% pack -IncludeReferencedProjects "Mic.XLibrary.Core.Interfaces\Mic.XLibrary.Core.Interfaces.csproj" -symbols -o Build -p Configuration=%config% %version%
call %nuget% pack -IncludeReferencedProjects "Mic.XLibrary.Core\Mic.XLibrary.Core.csproj" -symbols -o Build -p Configuration=%config% %version%
