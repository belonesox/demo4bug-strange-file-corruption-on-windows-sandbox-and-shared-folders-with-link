rem 
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\Tools\VsDevCmd.bat"
rem msbuild  /p:Configuration="Release" /p:Platform="x86" jobsinfo\jobsinfo.vcxproj
rem msbuild  /p:OutDir="./out" /p:Configuration="Release" /p:Platform="x86" jobsinfo\jobsinfo.vcxproj
msbuild  /p:OutDir="./out" /p:Configuration="Release" /p:Platform="x86" helloworld.vcxproj
