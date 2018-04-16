SET solucion=Vueling
SET proyecto=Vueling.Presentation.WinSite
SET apikey=danielgracia

@ECHO OFF
if not exist %USERPROFILE%\Documents\NugetRepo mkdir %USERPROFILE%\Documents\NugetRepo

nuget pack %USERPROFILE%\source\repos\%solucion%\%proyecto%\%proyecto%.csproj -IncludeReferencedProjects
move %USERPROFILE%\source\repos\%solucion%\%proyecto%\%proyecto%.1.0.0.nupkg %USERPROFILE%\Documents\NugetRepo

nuget push %USERPROFILE%\Documents\NugetRepo\%proyecto%.1.0.0.nupkg %apikey% -Source http://localhost:80/vuelingnuget/nuget

PAUSE 