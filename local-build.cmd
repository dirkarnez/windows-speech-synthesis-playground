@REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

@REM SET PATH=^
@REM %DOWNLOADS_DIR%\PortableGit\bin;^
@REM %DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
@REM %DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
@REM %DOWNLOADS_DIR%\cmake-3.26.1-windows-x86_64\bin;

set PATH=^
D:\Softwares\PortableGit\bin;^
D:\Softwares\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64;^
D:\Softwares\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin;^
D:\Softwares\cmake-3.29.3-windows-x86_64\bin;

@REM -Dportaudio_DIR="%DOWNLOADS_DIR_LINUX%/portaudio-v19.7.0-mingw64-x86_64-posix-seh-rev0-8.1.0/lib/cmake/portaudio" ^

cmake.exe -G"MinGW Makefiles" ^
-DCMAKE_BUILD_TYPE=Debug ^
-B./cmake-build &&^
cd cmake-build &&^
cmake --build . &&^
echo "Successful build"
pause
