# Soal 2

Pada database MySql, kita memiliki tabel `barang` yang terdiri dari 2 kolom _VARCHAR_ seperti berikut:

![](res/tabel1.PNG)

Untuk mengakses data pada tabel tersebut, kita menggunaka objek `PreparedStatement` seperti berikut:

```java
String sql = "__________________";
PreparedStatement st = connection.prepareStatement(sql);

```

### Soal:

Buat tulis perintah SQL yang harus dituliskan pada bagian yang ditandai `_____________` untuk tujuan:

1. Membaca semua data
2. Menyisipkan 1 data baru dengan `kode` = `A004` dan `nama` = `Spidol`
3. Merubah data dengan `nama` menjadi `Pensil Warna` untuk data dengan `kode` = `A002`
4. Hapus data dengan `kode` = `A001`