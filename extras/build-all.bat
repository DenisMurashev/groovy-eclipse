rem Important!
rem To run the script one should have GPG4WIN installed and secret key created

echo Building groovy-eclipse-batch and installing to maven local
cd groovy-eclipse-batch-builder
call ant extract-create-install

echo Installing groovy-eclipse-compiler to maven local
cd ../groovy-eclipse-compiler
call mvn clean install

echo Running integration tests...
cd ../groovy-eclipse-compiler-tests
call mvn clean install

cd ..
