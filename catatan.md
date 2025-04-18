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
- [User defined class](docs/user-defined-class.md)
- Membuat array dari class
- Menampilkan elemen dari array
- Tugas:
  - Soal 1: Buat program (file: classuser5.jsp) untuk mencetak array daftar menggunakan perintah while
  - Soal 2: Buat program (file: classuser6.jsp) untuk mencetak array daftar menjadi bentuk dropdown atau listbox
  - Soal 3: Buat program (file: classuser7.jsp) untuk mencetak array daftar menjadi bentuk ordered list `<ol>` atau unordered list `<ul>`.
  - Soal 4: Buat program (file: classuser8.jsp) untuk mencetak array daftar menjadi bentuk tabel. Untuk masing-masing baris, tambahkan nomor baris.

    
## Pertemuan 6
- Review Tugas
- [JSTL + EL](docs/jstl-el.md)
- Download file berikut, dan coba untuk jalankan
  - JSP (copy ke folder Web Pages)
    - [controller2.jsp](https://github.com/ruang-belajar/java-ee/blob/master/src/controller2.jsp)
    - [view2.jsp](https://github.com/ruang-belajar/java-ee/blob/master/src/view2.jsp)
  - Class (copy ke package)
    - [Siswa.class](https://github.com/ruang-belajar/java-ee/blob/master/src/Siswa.class)
    - [Daftar.class](https://github.com/ruang-belajar/java-ee/blob/master/src/Daftar.class)
  - Jangan lupa untuk rubah nama package sesuai project

- Diskusi:
  - Apa yang dimaksud dengan model MVC?
  - Bisakah Anda menentukan mana bagian _Model_, _Controller_ dan _View_ dari contoh program sebelumnya?
  - Apa fungsi perintah berikut pada `controller1.jsp`?
    ```java
    request.setAttribute("siswa", siswa);
    request.setAttribute("nilai", nilai);
    request.setAttribute("daftarsiswa", daftar.getList());
    ```
  - Apa fungsi perintah berikut pada `controller1.jsp`?
    ```java
    RequestDispatcher dispacher = request.getRequestDispatcher("view2.jsp");
    dispacher.forward(request, response);
    ```
  - Pada view2.jsp, bagian mana yang disebut EL?
  - Apa saja kegunaan tag `<c:out>` `<c:if>` `<c:forEach>`
  - Selain tag tersebut, tag JTSL apa saja yang Anda bisa temukan di internet? Apa kegunaannya?
- Latihan:
  - Rubah file pada latihan sebelumnya dengan mengimplementasi model MVC dan menggunakan JSTL
  - Rubah `classuser2.jsp` menjadi `classuser2controller.jsp` dan `classuser2view.jsp`.
  - Opsional: Daftar user bisa dibuat menjadi class terpisah, misal: `DaftarUser`. (lihat kembali file `Daftar.class` pada contoh yang kita pelajari tadi)
- Tugas:
  - Rubah `classuser8.jsp` pada tugas minggu lalu menjadi bentuk MVC menggunakan JSTL
  - File: `classuser8controller.jsp`, `classuser8view.jsp`


