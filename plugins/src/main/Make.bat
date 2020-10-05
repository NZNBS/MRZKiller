@ECHO off
DEL "%~dp0libs\armeabi-v7a\libMRZ.so"
set ndkpatch=C:\Users\nazak\Documents\android-ndk-r20b\ndk-build
"%ndkpatch%" 
PAUSE