cd ./pusrak
./bangun_win_x64.sh
cd ../

clang -c biner_win_x64.s -o biner_win_x64.o

clang \
    biner_win_x64.o \
    -nostdlib \
    -e awal \
    -L./pusrak \
    -l:pusrak_win_x64.a \
    -l kernel32 \
    -o biner.exe \

rm biner_win_x64.o
