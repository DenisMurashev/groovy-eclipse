rem Important!
rem To run the script one should have %M2_REPO% environment variable set to correct place of local Maven repository

if "%M2_REPO%" == "" (set "M2_REPO=%USERPROFILE%"\.m2\repository)

echo Building groovy-eclipse-batch and deploying or staging to codehaus
cd groovy-eclipse-batch-builder
call ant extract-create-publish

echo Deploying/staging groovy-eclipse-compiler to codehaus
cd ../groovy-eclipse-compiler
call mvn clean deploy

cd ..
