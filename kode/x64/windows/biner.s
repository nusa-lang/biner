.global awal

# keluar(kode_keluar ecx)
.extern keluar

awal:
    movl $0, %ecx
    call keluar
    ret
