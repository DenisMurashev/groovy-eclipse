rem Important!
rem To run the script one should have %M2_REPO% environment variable set to correct place of local Maven repository

if "%M2_REPO%" == "" (set "M2_REPO=%USERPROFILE%"\.m2\repository)

rem clear maven local to make sure we use the deployed artifacts
rem for testing
rd /S /Q %M2_REPO%\org\codehaus\groovy\groovy-eclipse-batch
rd /S /Q %M2_REPO%\org\codehaus\groovy\groovy-eclipse-compiler
rd /S /Q %M2_REPO%\org\codehaus\groovy\groovy-eclipse-compiler-tests

echo Running integration tests...
cd groovy-eclipse-compiler-tests
call mvn clean install

cd ..
