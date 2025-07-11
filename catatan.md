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
- [Array](https://github.com/ruang-belajar/java/blob/main/docs/10-array.md)
  - Membuat array dari class
  - Menampilkan elemen dari array
- [User defined class](docs/user-defined-class.md)
  - [User.java](src/User.java)
  - [classuser1.jsp](src/classuser1.jsp)
  - [classuser2.jsp](src/classuser2.jsp)
  - [classuser3.jsp](src/classuser3.jsp)
  - [classuser4.jsp](src/classuser4.jsp)
- Latihan:
  - Soal 1: Berdasarkan `classuser3.java`, buat program (file: `classuser5.jsp`) untuk mencetak array `daftar` menggunakan perintah `while`
  - Soal 2: Berdasarkan `classuser3.java`, buat program (file: `classuser6.jsp`) untuk mencetak array `daftar` menjadi bentuk _dropdown_ atau _listbox_
- Tugas:
  - Soal 1: Berdasarkan `classuser3.java`, buat program (file: `classuser7.jsp`) untuk mencetak array `daftar` menjadi bentuk _ordered list_ `<ol>` atau _unordered list_ `<ul>`.
  - Soal 2: Berdasarkan `classuser3.java`, buat program (file: `classuser8.jsp`) untuk mencetak array `daftar` menjadi bentuk tabel. Untuk masing-masing baris, tambahkan nomor baris.

    
## Pertemuan 6
- Review Tugas
- [JSTL + EL](docs/jstl-el.md)

- Diskusi:
  - Apa saja kegunaan tag `<c:out>` `<c:if>` `<c:forEach>`
  - Selain tag tersebut, tag JTSL apa saja yang Anda bisa temukan di internet? Apa kegunaannya?
- Latihan:
  - Rubah file pada latihan sebelumnya dengan mengimplementasi model MVC dan menggunakan JSTL
  - Rubah `classuser2.jsp` menjadi `classuser2controller.jsp` dan `classuser2view.jsp`.
  - Opsional: Daftar user bisa dibuat menjadi class terpisah, misal: `DaftarUser`. (lihat kembali file `Daftar.class` pada contoh yang kita pelajari tadi)
- Tugas:
  - Rubah `classuser8.jsp` pada tugas minggu lalu menjadi menggunakan JSTL.
  - Tambahkan `public Integer gaji` pada class `User` dan lakukan perubahan yang diperlukan pada bagian _constructor_ (lihat kode `User.java` di [JSTL + EL](docs/jstl-el.md) )
  - Tampilkan _gaji_ sebagai kolom baru pada tabel
  - Format tampilan, tambahkan _formatNumber_ pada tampilan _gaji_, sehingga tampilan menjadi seperti berikut:\
    ![](latihan/res/jstl-1.png)
  - Simpan dengan nama file `classuser8b.jsp`

# Pertemuan 7
- Review tugas
- [MVC](docs/mvc.md)
- Download file berikut, dan coba untuk jalankan
  - JSP (copy ke folder Web Pages)
    - [controller2.jsp](https://github.com/ruang-belajar/java-ee/blob/master/src/controller2.jsp)
    - [view2.jsp](https://github.com/ruang-belajar/java-ee/blob/master/src/view2.jsp)
  - Class (copy ke package)
    - [Siswa.class](https://github.com/ruang-belajar/java-ee/blob/master/src/Siswa.java)
    - [Daftar.class](https://github.com/ruang-belajar/java-ee/blob/master/src/Daftar.java)
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

## Pertemuan 8
- UTS

## Pertemuan 9
- [CRUD](docs/crud.md)
- Setelah mengikuti pembahasan pada [CRUD](docs/crud.md), coba kerjakan latihan berikut:
  - Tambahkan method `update()` pada class `Mahasiswa` yang berfungsi eksekusi perintah `UPDATE` untuk merubah record. Buat file `mahasiswa.update.jsp` untuk mencontohkan penggunaan fungsi.
  - Tambahkan method `baca(nim)` pada class `Mahasiswa` yang berfungsi membaca data dari tabel `mahasiswa` dan menyimpannya ke property `nim`, `nama`, `nilai`. Buat file `mahasiswa.baca.jsp` untuk mencontohkan penggunaan fungsi. 
- Tugas:
  - Mengikuti metode MVC, rubah `mahasiswa.tambah.jsp`, `mahasiswa.update.jsp`, `mahasiswa.baca.jsp` sehingga output ditampilkan menggunakan _view_, masing-masing dengan nama `mahasiswa.tambah.view.jsp`, `mahasiswa.update.view.jsp`, `mahasiswa.baca.view.jsp`

## Pertemuan 10
- Review tugas
- [Project Toko ATK - Fase 1](latihan/project-1.md)

## Pertemuan 11
- Review tugas: `baranglist.jsp`, `baranglist.view.jsp`, `barangtambah.jsp`, `formtambahbarang.jsp`, `formbarangtambah.view.jsp`
- Pelajari [Project Toko ATK - Fase 2](latihan/project-1-fase-2.md)

## Pertemuan 12
- Review tugas
- [API](docs/api.md)
- [Project Toko ATK - Fase 3](latihan/project-1-fase-3.md)


## Pertemuan 13
- Di pertemuan ini, kita akan menambahkan Bootstap (framework CSS) ke halaman web yang kita buat sebelumnya
- Untuk menambahkan Bootstrap, kita akan perlu menambahkan _link_ di bagian header HTML. Check link di [BootstrapCDN](https://www.bootstrapcdn.com/)
  - Check versi 4.x.x
  - copy link _CSS - HTML_ dan _Javascript - HTML_, paste ke bagian header HTML.
- Edit `formlogin.view.jsp`
  - Tambahkan link ke _css_ & _js_ Bootstrap.
  - Rubah isi `<body>` menjadi seperti berikut:
    ```html
    <div class="mx-auto" style="margin-top:100px; width:300px">
        <div class="text-center mb-2">LOGIN</div>
        <form action="login.jsp" method="post">
            <input name="username" class="form-control"><br>
            <input name="password" class="form-control" type="password">
            <button type="submit" class="btn btn-primary btn-block mt-3">Login</button>
        </form>
    </div>
    ```
  - Diskusi:
    - Coba lakukan modifikasi pada class (hapus/ubah), kemudian lihat perubahan pada tampilannya.
    - Apa kegunaan class `mx-auto`, `text-center`, `mb-2`, `mt-3`, `form-control`, `btn-primary`, `btn-block`?
    - Apa kegunaan atribut `style`?
  - Latihan:
    - Tambahkan _gradient background_. Check [https://cssgradient.io/](https://cssgradient.io/).
    - Tambahkan garis _border_ dan _rounded radius_, dan rubah warna garis.    
- Edit `home.view.jsp`
  - Tambahkan link ke _css_ & _js_ Bootstrap.
  - Tambah class `btn` ke `List Sales`, `List Barang`, dan `List Stock`
  - Tambahkan [tile1.jpg](res/tile1.jpg) sebagai background
  - Perbesar ukuran judul
  - Buat tulisan dan tombol berada di tengah
- Edit `baranglist.view.jsp`
  - Tambahkan link ke _css_ & _js_ Bootstrap.
  - Rubah list barang menjadi bentuk tabel, tambahkan class `table`
  - Tambah class `btn` ke `Tambah Barang`
    
## Pertemuan 14-15
- Latihan Github
  - Clone https://github.com/ruang-belajar/jsp-project-test
  - Buka project di Netbeans
  - Buat file JSP _nama_.testing.jsp
  - Tulis nama dalam `<title>`
  - Simpan file
  - _Commit_ file **_nama_.testing.jsp**, kemudian _push_
- Classroom Github
  - Tentukan group: 3-4 orang per group.
  - Accept group assignment: https://classroom.github.com/a/j2pqL1Gy
    - Nama group ditulis dengan huruf kapital, tanpa spasi. Contoh: _GROUP2_, _GROUP3_, _GROUP4_, ...
  - Clone repositori
  - Buka repositori menggunakan Netbeans
- Tugas: [Project 2](latihan/project-2.md)
  - Masing-masing anggota tim hanya _commit_ dan _push_ untuk file yang dikerjakannya (file: ***nama*.messageboard.jsp** dan ***nama*.messageboard.view.jsp**)
  - Pada saat penilaian seseorang akan _pull_ semua kerjaan untuk hasilnya bisa dipresentasikan.
  - Anggota yang mengerjakan `index.jsp` akan mempresentasikan program. 