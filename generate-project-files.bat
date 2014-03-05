@echo off
pushd "%~dp0"
python third_party/gyp/gyp ^
    --depth=. ^
    --generator-output=build ^
    -G msvs_version=2012e ^
    -f msvs ^
    -DUSE_OCULUS=0 ^
    -DCROSS_COMPILE32=1
popd
