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
2. Menyisipkan 1 data baru
3. Update `nama` berdasarkan `kode`
4. Hapus data berdasarkan `kode`