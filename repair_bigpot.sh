# repair library path of the executable file
cd BigPot
rm bigpot
make -f Makefile.clang 
./repair_dylib.sh bigpot loader_path loader_path\\\/\\\.\\\.\\\/lib
./repair_dylib.sh bigpot rpath loader_path\\\/\\\.\\\.\\\/lib
otool -L bigpot
cd ..
cp BigPot/bigpot bigpot.app/Contents/MacOS/bigpot