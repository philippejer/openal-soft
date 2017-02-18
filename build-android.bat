if not exist build-android-armeabi-v7a mkdir build-android-armeabi-v7a
cd build-android-armeabi-v7a
del CMakeCache.txt
cmake -G "MinGW Makefiles" -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=..\install-android-armeabi-v7a -D CMAKE_TOOLCHAIN_FILE=%ANDROID_NDK_ROOT%\build\cmake\android.toolchain.cmake -D ANDROID_NDK=%ANDROID_NDK_ROOT% -D ANDROID_PLATFORM="android-21" -D ANDROID_ABI="armeabi-v7a with NEON" -D ALSOFT_NO_CONFIG_UTIL=1 ..
mingw32-make
mingw32-make install
pause