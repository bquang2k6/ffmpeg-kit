#!/bin/bash
BASEDIR=$(pwd)
source scripts/function-android.sh

export ANDROID_NDK_ROOT=/mnt/c/Users/quang/AppData/Local/Android/Sdk/ndk/25.1.8937393

echo "Testing get_toolchain:"
RESULT=$(get_toolchain)
echo "Result: $RESULT"

echo "Checking directories:"
DIR1="${ANDROID_NDK_ROOT}/toolchains/llvm/prebuilt/linux-x86_64"
DIR2="${ANDROID_NDK_ROOT}/toolchains/llvm/prebuilt/windows-x86_64"

if [ -d "$DIR1" ]; then echo "$DIR1 exists"; else echo "$DIR1 missing"; fi
if [ -d "$DIR2" ]; then echo "$DIR2 exists"; else echo "$DIR2 missing"; fi

echo "Checking version:"
cat /proc/version
