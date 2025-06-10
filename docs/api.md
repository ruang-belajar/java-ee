# API

API (_Application Programming Interface_) adalah fitur yang memungkinkan dua aplikasi atau sistem yang berbeda untuk saling berkomunikasi dan bertukar data.

Untuk memudahkan kita memanipulasi objek dan melakukan _API call_, kita akan menggunakan library _jQuery_. Oleh sebab itu, `<script src="https://code.jquery.com/jquery-3.7.1.min.js" ...></script>` ditambahkan pada header halaman. Untuk mempelajari lebih banyak tentang library ini, check
[jquery.com](https://jquery.com/).

Pelajari contoh program berikut:

file: `apitest1.jsp`
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP API Test 1</title>

        <!-- include jQuery -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

    </head>
    <body>
        <h1>Test API</h1>
        Bilangan Acak:
        <div id="panel">...</div>

        <button type="button" id="btnGantiTulisan">Ganti tulisan via API</button>

        <hr>

        <input id="depan" placeholder="Nama depan"><br>
        <input id="belakang" placeholder="Nama belakang">
        <button type="button" id="btnNamaLengkap">Salam</button>
    </body>

    <script>
        $(document).ready(function () {
            $("#btnGantiTulisan").click(function () {
                //  request data via API ke apidata1.jsp
                $.post("apidata1.jsp", function (result) {
                    // data yang dikirim dari apidata1.jsp disimpan dalam variabel result
                    // tampilkan result ada div panel
                    $("#panel").html(result);
                });
            });

            $("#btnNamaLengkap").click(function () {
                // baca nama depan dan nama belakang, simpan ke variabel
                let namaDepan = $("#depan").val();
                let namaBelakang = $("#belakang").val();

                //  request data via apidata2.jsp
                //  kirim namaDepan dan namaBelakang sebagai POST variabel
                $.post("apidata2.jsp", {depan: namaDepan, belakang: namaBelakang}, function (result) {
                    // output dari apidata2.jsp tersimpan dalam variabel result
                    // tampilkan result
                    alert("Halo, " + result);
                });
            });
        });
    </script>
</html>
```

file: `apidata1.jsp`
```jsp
<%
    // generata bilanagan acak
    long acak = Math.round(Math.random()*100);
    
    // kirim output: bilangan acak
    out.print(acak);
%>
```

file: `apidata2.jsp`
```jsp
<%
    // membaca POST variable
    String namaDepan = request.getParameter("depan");
    String namaBelakang = request.getParameter("belakang");
    
    // kirim output
    out.print(namaDepan+" "+namaBelakang);
%>
```

_API call_ dilakukan lewat perintah `$.post()`. Request ini dikirim ke file `apidata1.jsp` dan `apidata2.jsp`. Perintah `out.print()` pada adalah untuk mengirimkan kembali data (berupa text) yang dibaca kembali di halaman yang melakukan _request_ (`apitest1.jsp`). Dengan cara ini kita bisa meminta data ke server, tanpa harus reload halaman.

Fitur API ini bukan saja bisa digunakan oleh browser, tapi juga aplikasi lain. Selama ia bisa berkomunikasi dengan protokol HTTP, maka ia bisa request informasi (seperti contoh request ke `apitest1.jsp`).

`$("#panel").html(result);` adalah merubah isi dari `<div id="panel">` dengan text yang diterima dari `apidata1.jsp`. Dengan cara ini kita mengubah sebagian dari tampilan halaman, tanpa reload seluruh halaman. Prinsip serupa digunakan jika kita mau membangun _Single Page Application (SPA)_.

 