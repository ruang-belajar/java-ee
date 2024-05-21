# Soal 5

Berikut contoh halaman JSP


```java
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <____(a)______>Beranda: SI Kampus</title>
    </head>
    <body>
        <ul>
            <li><a href="data_mahasiswa.jsp">Mahasiswa</a></li>
            <li><a href="data_dosen.jsp">Dosen</a></li>
            <%
                _____(b)_____ namaDepan = "Budi";
                out.println("Kembali ke halaman utama");
            %>
        </ul>
    </body>
</html>
```

## Soal:

Lengkapi kode program **(a)**, **(b)**.