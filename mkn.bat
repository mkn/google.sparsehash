

@ECHO off

IF EXIST %CD%\google (
	rd /S/Q %CD%\google
)

git clone --depth 1 https://github.com/sparsehash/sparsehash-c11 -b master google --recursive || exit 666 /b

rd /S/Q %CD%\google\tests\gmock
rd /S/Q %CD%\google\tests\gtest