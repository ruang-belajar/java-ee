# Catatan Kuliah: Pemrograman Java Lanjut 2025

## Pertemuan 1
- [Pendahuluan: Java EE](docs/res/Java%20EE%20-%20Pertemuan%201.pptx)
- Tugas, setup program:
  - XAMPP (Apache + Tomcat)
  - Netbeans
  - JDK 
  - Referensi Tugas: https://github.com/ruang-belajar/java-ee/blob/master/docs/setup.md
  

## Pertemuan 2
- [Request Type](docs/request.md)
- Latihan: Kerjakan _Soal 1_ dan _Soal 2_ dari [Latihan 1](latihan/latihan-01.md)
- Referensi HTML
  - [Membuat listbox](https://tutorasr.blogspot.com/2017/03/membuat-listbox-di-html-dengan-mudah.html)
  - [Input number](https://sko.dev/referensi/html/input-number-di-html)
  - [Input checkbox](https://sko.dev/referensi/html/form-input-checkbox)
- Tugas: Kerjakan _Soal 3_ dari [Latihan 1](latihan/latihan-01.md)


## Pertemuan 3
- Review tugas
- Menggunakan [Session](docs/session.md)
- Check [Latihan 2](latihan/latihan-02.md)
- Menggunakan [Redirect](docs/redirect.md)
- Setup Github
  - Buat akun github (jika belum ada)
  - Download & install Github
- Latihan: Membuat form login
  - Buat project 
  - Buat `formlogin.jsp`: menampilkan form login
  - Buat `login.jsp`: memproses request login
    - simpan username di session
  - Buat `home.jsp`: halaman yang dibuka jika login berhasil.
    - Tampilkan username
    - buat link ke `logout.jsp`
- Tugas:
  - Buat `logout.jsp`: proses logout. Redirect ke `formlogin.jsp` di akhir proses.
  - Edit `home.jsp`
    - Jika user akses ke halaman ini dalam kondisi belum login, maka redirect ke `formlogin.jsp`
  
---

## Pertemuan 4
- Review Tugas
- Setup Github Assignment
- [Standard Class](docs/standard-class.md)
- Diskusi:
  - Check [Java - API Spesification]((https://docs.oracle.com/javase/8/docs/api/overview-summary.html))
    - Kapan kita menggunakan package berikut:
      - java.io
      - java.sql
      - java.util
      - java.text
      - java.awt
      - java.swing
  - Check [Dokumentasi Java - Date](https://docs.oracle.com/javase/8/docs/api/java/util/Date.html)
    - Apa saja class dan method yang bisa Anda kenali fungsinya?
    - Apa yang dimaksud dengan fungsi yang ditandai "deprecated" ?
- Latihan: [Latihan 3 - Soal 1](latihan/latihan-03.md)
- Tugas: [Latihan 3 - Soal 2](latihan/latihan-03.md)

## Pertemuan 5
- User defined class
- Membuat array dari class
- Menampilkan elemen dari array
    