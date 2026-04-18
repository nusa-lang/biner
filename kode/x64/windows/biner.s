.section .rodata
    nama: .ascii "Fern Aerell\0"

.section .text

# awal() pub
.global awal

# keluar(kode_keluar ecx)
.extern keluar
# jumlah_karakter(rcx *) rax
.extern jumlah_karakter

# awal()
awal:
    leaq nama(%rip), %rcx # rcx = &nama
    call jumlah_karakter  # jumlah_karakter(rcx) rax

    movl %eax, %ecx       # ecx = eax (eax itu 32bit nya rax)
    call keluar           # keluar(ecx)

    ret                   # tidak mengembalikan
