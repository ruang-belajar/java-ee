# Catatan Kuliah: Pemrograman Java Lanjut 2024 (kelas Reguler)

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

## Pertemuan 3: CRUD
- Persiapan database ([test.sql](src/test.sql))
- Check [pujangga123/LatihanJSP](https://github.com/pujangga123/LatihanJSP)
- Pelajari [struktur file JSP](docs/struktur-file.md)
- buat JSP untuk insert & menampilkan data
  - `form_insert.jsp`
  - `show_mahasiswa.jsp`
  - `insert_mahasiswa.jsp`
  - `hapus_mahasiswa.jsp`
- Tugas:
  - Buat tabel `jurusan`, dengan kolom sebagai berikut:
    - `kode`: _VARCHAR(10)_
    - `nama`: _VARCHAR(20)_
  - Buat file untuk menampilkan form (`form_tambah_jurusan.jsp`), menambahkan (`tambah_jurusan.jsp`), menampilkan (`show_jurusan.jsp`) dan menghapus data (`hapus_jurusan.jsp`).

## Pertemuan 4:
- Copy package berisi file `Mahasiswa.java` ke folder _Source Package_
- Check [pujangga123/LatihanJSP](https://github.com/pujangga123/LatihanJSP)
- Buat `form2_insert.jsp` (copy dari `form_insert.jsp`) mengarah ke `insert2_mahasiswa.jsp` untuk proses data 
- Membuat program untuk menampilkan insert (`insert2_mahasiswa.jsp`) dan delete (`delete2_mahasiswa.jsp`), menggunakan class Mahasiswa
- Buat `index.html` mengarah ke `form_insert.jsp`, `form2_insert.jsp`, `show_mahasiswa.jsp`, `show2_mahasiswa.jsp` 
- Bagi yang menemukan masalah Netbeans selalu meminta _username_ dan _password_ check solusi di bagian [FAQ](docs/faq.md)

## Pertemuan 5:
- review design
  - Halaman: 
    - login
    - beranda
    - data dosen
    - form dosen
    - data mahasiswa
    - form mahasiswa
    - data mata kuliah
    - form mata kuliah
    - data users
    - form users
    - data kelas
    - form kelas
    - tambah peserta
- buat `data_mahasiswa.jsp` (_copy-paste_ dari `show2_mahasiswa.jsp`)
- buat `form_mahasiswa.jsp` (_copy-paste_ dari `insert2_mahasiswa.jsp`)
  - tambahkan link ke `insert2_mahasiswa.jsp`
  - edit sehingga berfungsi untuk menambahkan, menampilkan, dan update data
- siapkan `beranda_admin.jsp`
  - link ke `data_mahasiswa.jsp`
- siapkan `index.jsp`, redirect ke `beranda_admin.jsp`
  - lihat https://stackoverflow.com/questions/4967482/redirect-pages-in-jsp


  ## Pertemuan 6:
- Buat `data_mahasiswa.jsp`
- Buat `form_mahasiswa.jsp`
- Buat `data_dosen.jsp`
- Buat `form_dosen.jsp`

## Pertemuan 7: UTS

## Pertemuan 8:
- Buat data_user.jsp
- Buat form_user.jsp
- Tugas:
  - Buat `data_peserta.jsp`
  - Buat `form_peserta.jsp`
  - Buat `dologin.php`
  - Buat `login.jsp`
  - Edit `index.jsp`
    - tambahkan link ke `data_peserta.jsp` dan `form_peserta.jsp`

---

## Pertemuan 9:
- Review HTML tags
- Review [session](docs/session.md), [redirect](docs/redirect.md)
- Review form `login.jsp`
- Review CSS
  - apply _style_
  - apply _class_
- [Bootstrap CSS](docs/bootstrap.md) 
  - apply `btn` ke menu di `index.jsp`
  - apply `table` ke `data_dosen.jsp`
- Latihan:
  - Apply template ke halaman `login.jsp`
  - Template: [bootsnipp.com](https://bootsnipp.com/)


## Pertemuan 10
- halaman index:
  - Data Mahasiswa
  - Data Dosen
  - Data Mata Kuliah
  - Data Kelas
- `data_kelas.jsp`
- `form_kelas.jsp`
  - edit kelas
  - Tabel daftar peserta:
  - Form:
    - daftar mahasiswa:
    - tombol: _Tambah Peserta_
    - `tambah_peserta.jsp`

## Pertemuan 11:
- buat `logout.jsp`
- Perbaikan layout `index.jsp`
- Review menyisipkan script Java pada file JSP: Menampilkan waktu (Tanggal)
  - Tampilkan dalam format (dd/mm/yyyy)
  - Referensi [LocalDate](https://www.geeksforgeeks.org/java-time-localdate-class-in-java/)
- Prep `Kelas.java` ([download file](https://github.com/ruang-belajar/SIKampus2/blob/persiapan/src/java/kampus/Kelas.java))
- Buat form `data_kelas.jsp`
- Buat table kelas
- Tugas:
  - Buat `form_kelas.jsp`

## Pertemuan 12:
- 