#!/usr/bin/env bash
set -e # exit on first error
set -u # exit on using unset variable

# Platform optios: "AnyCPU", "x64", "AnyCPU"
# /p:Configuration="Debug" or "Release"



# ************* Begin AnyCPU .NET 4*********************************************
# Seems to be the only option that matter on linux

xbuild "../MajorsilenceReporting-Linux.sln" /toolsversion:4.0 /p:Configuration="Release";Platform="Any CPU"

rm -rf ./majorsilence-reporting-build-dot-net-4-AnyCPU
mkdir ./majorsilence-reporting-build-dot-net-4-AnyCPU

cp ../DataProviders/bin/Release/DataProviders.dll ./majorsilence-reporting-build-dot-net-4-AnyCPU/DataProviders.dll 
cp ../RdlAsp/bin/Release/RdlAsp.dll ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlAsp.dll 
cp ../RdlCmd/bin/Release/RdlCmd.exe ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlCmd.exe 
cp ../RdlCri/bin/Release/RdlCri.dll ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlCri.dll 
cp ../RdlDesign/bin/Release/RdlDesigner.exe ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlDesigner.exe 
cp ../RdlDesktop/bin/Release/RdlDesktop.exe ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlDesktop.exe 
cp ../RdlDesktop/bin/Release/config.xml ./majorsilence-reporting-build-dot-net-4-AnyCPU/config.xml 
cp ../RdlEngine/bin/Release/RdlEngine.dll ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlEngine.dll 
cp ../RdlEngine/bin/Release/ICSharpCode.SharpZipLib.dll ./majorsilence-reporting-build-dot-net-4-AnyCPU/ICSharpCode.SharpZipLib.dll 
cp "../References/dot net 4/Mono.Security.dll" ./majorsilence-reporting-build-dot-net-4-AnyCPU/Mono.Security.dll 
cp "../References/dot net 4/Npgsql.dll" ./majorsilence-reporting-build-dot-net-4-AnyCPU/Npgsql.dll 
cp "../References/dot net 4/itextsharp.dll" ./majorsilence-reporting-build-dot-net-4-AnyCPU/itextsharp.dll 
cp ../RdlEngine/bin/Release/RdlEngineConfig.xml ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlEngineConfig.xml 
cp ../RdlMapFile/bin/Release/RdlMapFile.exe ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlMapFile.exe 
cp ../RdlViewer/bin/Release/RdlViewer.dll ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlViewer.dll 
cp ../RdlViewer/RdlReader/bin/Release/RdlReader.exe ./majorsilence-reporting-build-dot-net-4-AnyCPU/RdlReader.exe 
cp "../References/dot net 3.5/zxing.dll" ./majorsilence-reporting-build-dot-net-4-AnyCPU/zxing.dll

zip -r majorsilence-reporting-build-dot-net-4-AnyCPU.zip majorsilence-reporting-build-dot-net-4-AnyCPU/

# ************* End AnyCPU .NET 4*********************************************

# ************* Begin AnyCPU .NET 3.5*********************************************

# mono is not correctly targetting 3.5
exit


xbuild "../MajorsilenceReporting-Linux.sln" /toolsversion:4.0 /p:Configuration="Release";Platform="Any CPU";TargetFrameworkVersion=v3.5

rm -rf ./majorsilence-reporting-build-dot-net-3.5-AnyCPU
mkdir ./majorsilence-reporting-build-dot-net-3.5-AnyCPU

cp ../DataProviders/bin/Release/DataProviders.dll ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/DataProviders.dll 
cp ../RdlAsp/bin/Release/RdlAsp.dll ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlAsp.dll 
cp ../RdlCmd/bin/Release/RdlCmd.exe ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlCmd.exe 
cp ../RdlCri/bin/Release/RdlCri.dll ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlCri.dll 
cp ../RdlDesign/bin/Release/RdlDesigner.exe ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlDesigner.exe 
cp ../RdlDesktop/bin/Release/RdlDesktop.exe ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlDesktop.exe 
cp ../RdlDesktop/bin/Release/config.xml ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/config.xml 
cp ../RdlEngine/bin/Release/RdlEngine.dll ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlEngine.dll 
cp ../RdlEngine/bin/Release/ICSharpCode.SharpZipLib.dll ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/ICSharpCode.SharpZipLib.dll 
cp "../References/dot net 4/Mono.Security.dll" ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/Mono.Security.dll 
cp "../References/dot net 4/Npgsql.dll" ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/Npgsql.dll 
cp "../References/dot net 4/itextsharp.dll" ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/itextsharp.dll 
cp ../RdlEngine/bin/Release/RdlEngineConfig.xml ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlEngineConfig.xml 
cp ../RdlMapFile/bin/Release/RdlMapFile.exe ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlMapFile.exe 
cp ../RdlViewer/bin/Release/RdlViewer.dll ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlViewer.dll 
cp ../RdlViewer/RdlReader/bin/Release/RdlReader.exe ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/RdlReader.exe 
cp "../References/dot net 3.5/zxing.dll" ./majorsilence-reporting-build-dot-net-3.5-AnyCPU/zxing.dll

zip -r majorsilence-reporting-build-dot-net-3.5-AnyCPU.zip majorsilence-reporting-build-dot-net-3.5-AnyCPU/

# ************* End AnyCPU .NET 4*********************************************


# nuget pack seems to be broken.  See https://nuget.codeplex.com/SourceControl/network/forks/ddunkin/mono/contribution/6849

exit
cd nuget/My-FyiReporting
rm -rf lib
rm -rf ../My-FyiReporting-Build

mkdir ../My-FyiReporting-Build
mkdir lib
cd lib
mkdir net40
cd ..

cp -R ../../majorsilence-reporting-build-dot-net-4-AnyCPU/* lib/net40

cd ..

CURRENTPATH=`pwd`
nuget pack "$CURRENTPATH/My-FyiReporting/My-FyiReporting.nuspec" -OutputDirectory "$CURRENTPATH/My-FyiReporting-Build"
