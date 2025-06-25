# Project 2 - Message Wall

Buat project membuat _Message Wall_.

Untuk template project, check: https://github.com/ruang-belajar/JspProject1 atau sesuai dengan repositori classroom yang dibagikan.


## Halaman Depan
- Halaman depan (`index.jsp`) menampilkan judul dan link ke _message board_ masing-masing anggota tim. Link menyertakan _foto_ dan _nama_.
- Tambahkan judul, contoh: _Project Group 1_
  _Group 1_ disesuaikan dengan nama kelompok masing-masing
- Tambahkan bootstrap.

## Message Board
- Tambahkan bootstrap.
- Message board dibuat 2 file: `*.messageboard.jsp` dan `*.messageboard.view.jsp`. Tambahkan nama pada awal nama file. Misal untuk nama "Budi": `budi.messageboard.jsp` dan `budi.messageboard.view.jsp`.
- Pada halaman ini tampilkan _nama_ dan _foto_. Tambahkan CSS untuk menghias halaman.
- Pada ***nama*.messageboard.jsp** pastikan parameter tujuan diisi dengan nama sendiri:
    ```java
    Messager messager = new Messager("Budi"); // ganti "Budi" dengan nama sendiri
    ``` 

## Setup Database
- Siapkan database. Eksekusi script [wall.sql](../src/wall.sql)