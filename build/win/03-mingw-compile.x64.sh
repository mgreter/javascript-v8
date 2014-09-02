
echo shift \&\& \$@ > /bin/flock

cp ./mingw-generate-makefiles.x64.sh v8/tools/

cd v8

export GYPFLAGS="--no-parallel"
./tools/mingw-generate-makefiles.sh

cd out

make -f Makefile.x64 BUILDTYPE=Release v8

cd ..

cp out/out/Release/obj.host/tools/gyp/libv8.so ./
cp out/out/Release/obj.host/tools/gyp/libv8_base.a ./
cp out/out/Release/obj.host/tools/gyp/libv8_snapshot.a ./
cp out/out/Release/obj.host/tools/gyp/libv8_nosnapshot.a ./

cd ..