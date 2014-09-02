call cpanm Test::Number::Delta

cd ../..

set V8_DIR=build/win/v8

perl Makefile.PL

dmake

dmake test

pause