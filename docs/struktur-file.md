# Struktur File JSP

Struktur penulisan kode pada file _jsp_ bisa sangat beragam. Kita bisa melakukan satu tugas beberapa cara yang berbeda. Tentu ini baik, tapi seorang developer biasanya memilih pola-pola atau cara tertentu dalam mengerjakan projectnya, sehingga ia tidak harus memilih cara baru untuk mengerjakan suatu tugas. Pola-pola atau cara ini kita sebut sebagai _framework_.

Dalam perkuliahan yang ini -- untuk kemudahan -- kita akan menggunakan _framework_ sederhana sebagai berikut untuk membuat halaman JSP.

```jsp
<%-- 1. bagian deklarasi & import --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%-- 2. bagian pengolahan dan persiapan data --%>
<%
    // DEKLARASI OBJEK DAN VARIABEL
    
    // PENGOLAHAN DATA    
    // Siapkan semua variabel yang akan ditampilkan/digunakan pada bagian BODY

%>
<%-- DOKUMEN HTML --%>
<!DOCTYPE html>
<html>
    <%-- 3. DOKUMEN HTML: HEAD --%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Judul Halaman</title>
    </head>
    <%-- 4. DOKUMEN HTML: BODY --%>
    <body>
        <%-- sebisa mungkin, pada bagian BODY tidak ada proses eksekusi SQL --%>
    </body>
</html>
```