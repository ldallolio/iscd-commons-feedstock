set -e

cat -n CMakeLists.txt

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_SKIP_BUILD_RPATH=TRUE -S . -B build
cmake --build ./build --verbose --config Release
cmake --install ./build --verbose

