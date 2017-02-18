if not exist build-msvc141-x64 mkdir build-msvc141-x64
cd build-msvc141-x64
del CMakeCache.txt
cmake -G "Visual Studio 15 2017 Win64" -D CMAKE_INSTALL_PREFIX=..\install-msvc141-x64 -D DSOUND_INCLUDE_DIR="C:\Program Files (x86)\Windows Kits\8.1\include\um" -D DSOUND_LIBRARY="C:\Program Files (x86)\Windows Kits\8.1\Lib\winv6.3\um\x64" -D ALSOFT_NO_CONFIG_UTIL=1 ..
pause