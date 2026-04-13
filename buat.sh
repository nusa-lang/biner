cd ./pusrak
./buat.sh
cd ../

ARSITEKTUR=x64
SISTEM_OPERASI=windows

DIR_ARSITEKTUR_DAN_SISTEM_OPERASI=$ARSITEKTUR/$SISTEM_OPERASI
DIR_OBJEK=hasil/$DIR_ARSITEKTUR_DAN_SISTEM_OPERASI/objek

mkdir -p $DIR_OBJEK

clang -c kode/$DIR_ARSITEKTUR_DAN_SISTEM_OPERASI/biner.s -o $DIR_OBJEK/biner.o

clang \
    $DIR_OBJEK/*.o \
    -nostdlib \
    -e awal \
    -L./pusrak/hasil/$DIR_ARSITEKTUR_DAN_SISTEM_OPERASI \
    -l:pusrak.a \
    -l kernel32 \
    -o ./hasil/$DIR_ARSITEKTUR_DAN_SISTEM_OPERASI/biner.exe
