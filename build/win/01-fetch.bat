svn checkout http://v8.googlecode.com/svn/trunk/ v8 --revision r13185

cd v8

svn co http://gyp.googlecode.com/svn/trunk build/gyp --revision 1969
svn co http://src.chromium.org/svn/trunk/deps/third_party/cygwin third_party/cygwin --revision 66844
svn co https://src.chromium.org/chrome/trunk/deps/third_party/icu52 third_party/icu --revision 277999
svn co http://src.chromium.org/svn/trunk/tools/third_party/python_26 third_party/python_26 --revision 89111
svn co http://googletest.googlecode.com/svn/trunk testing/gtest --revision 643
svn co http://googlemock.googlecode.com/svn/trunk testing/gmock --revision 410

cd ..

pause