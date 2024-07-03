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
- Buat `data_usersmahasiswa.jsp`
- Buat `form_usersmahasiswa.jsp`
- Buat `data_usersdosen.jsp`
- Buat `form_usersdosen.jsp`

## Pertemuan 7: UTS

## Pertemuan 8:
- Edit `index.jsp`
  - Buat `login_dosen.jsp`
  - Buat `dologin_dosen.jsp`
  - Buat link dari index ke `data_usersmahasiswa.jsp`
  - Buat link dari index ke `data_usersdosen.jsp`
  - Tampilkan informasi login, dan link ke `login_dosen.jsp` dan `login_mahasiswa.jsp`
- Tugas:
  - Buat `login_mahasiswa.jsp`
  - Buat `dologin_mahasiswa.jsp`

## Pertemuan 9:
- Review HTML tags
- Review form `login_dosen.jsp`
- Review CSS
  - apply _style_
  - tag `<style>`
  - apply _class_
- [Bootstrap CSS](docs/bootstrap.md) 
  - apply `btn` ke menu di `index.jsp`
- Latihan:
  - Apply template ke halaman `login_dosen.jsp`
  - Template: [bootsnipp.com](https://bootsnipp.com/)
- Tugas:
  - Buat `login_mahasiswa.jsp` dan `dologin_mahasiswa.jsp`


## Pertemuan 10:
- Review [session](docs/session.md), [redirect](docs/redirect.md)
- Repositori [SIKampus2](https://github.com/ruang-belajar/SIKampus2)
- Buat `logout.jsp`
- Menampilkan waktu (Tanggal)
  - Tampilkan dalam format (dd/mm/yyyy)
  - Referensi [LocalDate](https://www.geeksforgeeks.org/java-time-localdate-class-in-java/)
- Membuat `data_kelas.jsp` copas dari `data_dosen.jsp`
- Tugas:
  - Buat `form_kelas.jsp`

## Pertemuan 11:
- Class [Kelas.java](https://github.com/ruang-belajar/SIKampus2/blob/persiapan/src/java/kampus/Kelas.java) dan [Peserta.java](https://github.com/ruang-belajar/SIKampus2/blob/persiapan/src/java/kampus/Peserta.java)
- Buat `data_kelas.jsp`
- Lengkapi `form_kelas.jsp`
  - form tambah peserta
  - form edit nilai peserta
- buat `dotambah_peserta.jsp`: mendaftarkan peserta ke kelas
- buat `doupdate_peserta.jsp`: update nilai di data peserta
- Referensi CSS form:
  - https://getbootstrap.com/docs/5.3/forms/input-group/#basic-example

## Pertemuan 12:
- Tugas buat `data_mahasiswa2.jsp`.
- Update [Mahasiswa.java](https://github.com/pujangga123/LatihanOOP/blob/main/src/kampus/Mahasiswa.java)
- Detail tugas: [Soal 6](latihan/soal6.md)

## Pertemuan 13: Rencana
- Lengkapi `form_kelas.jsp`
  - form tambah peserta
  - form edit nilai peserta
- Tambahkan CSS setiap file JSP
- Referensi CSS form:
  - https://getbootstrap.com/docs/5.3/forms/input-group/#basic-example