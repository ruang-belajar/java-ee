# Catatan Kuliah: Pemrograman Java Lanjut 2024

## Pertemuan 1
- Pendahuluan: Java EE
- Persiapan program
  - XAMPP (Apache + Tomcat)
  - Netbeans 21
  - JDK 17
  - Akun Github + Github Desktop 
  - Join Github Classroom (link terlampir di Edlink: Ruang Kelas)
- Tugas 1:
  - pelajari [Web Programming (JSP)](docs/res/Web-Programming-(JSP).pdf)
  - Setup web server (XAMPP)
  - Buat project web
  - Buat program membuat form POST (`method_post.jsp`) dan menampilkannya (`tampil_post.jsp`). Cek halaman 51-53
  
## Pertemuan 2
- Siapkan akun Github
- Download & Install _Github Desktop_
- Konek ke repositori `2024-java-lanjut`
- [Panduan Setup Netbeans](docs/setup.md)
- File contoh: [ContohDate1.jsp](src/ContohDate1.jsp), [MysqlInsert.jsp](src/MysqlInsert.jsp), [MysqlSelect.jsp](src/MysqlSelect.jsp.jsp)
- Tugas 2:
  - Buat form yang meminta input `nama` dan `nilai` (file:`input_nilai.jsp`)
  - Post form ke file `hasil.jsp`. Halaman tersebut kembali menampilkan `nama` dan `nilai`, ditambah dengan `keterangan`.
  - `keterangan` adalah _LULUS_ jika `nilai` lebih besar dari 60, jika tidak maka `keterangan` adalah `TIDAK LULUS`.
  - Gunakan file [hasil.php](https://github.com/ruang-belajar/java-ee/blob/master/src/hasil.php) sebagai petunjuk untuk membuat `hasil.jsp`

## Pertemuan 3
- Pelajari repositori https://github.com/pujangga123/LatihanJSP
- Persiapkan database
  - download [test.sql](src/test.sql)
  - gunakan [phpMyAdmin](http://localhost/phpmyadmin/) untuk import database
- Tugas buat database [tokoanak]
  - buat tabel [barang]
    - `kode`: _VARCHAR(10)_
    - `nama`: _VARCHAR(30)_
    - `kategori`: _VARCHAR(10)_
    - `harga_beli`: _INT_
    - `harga_jual`: _INT_
- Buat project `TokoAnak`
  - buat file JSP untuk input data bara
  - buat file JSP untuk menampilkan data barang yang ada
  - buat file JSP untuk menghapus data barang