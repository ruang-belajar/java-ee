# HTTP Request pada JSP

Pada protokol HTTP, kita bisa client bisa _meminta/memerintahkan_ sesuatu server. _Permintaan/perintah_ ini disebut _request_. Ada beberapa _request type_ yang bisa digunakan: POST, GET, PATCH, PUT, DELETE. Kali ini kita akan mempelajari _request type_ POST dan GET.

## Request Type GET
_Request type_ GET adalah ketika kita mengirimkan request ke server sambil mengirimkan data dalam lewat URL yang bisa dilihat langsung

file: `request1.jsp`
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nama = request.getParameter("nama");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Hello <%= nama %></h1>
    </body>
</html>
```

Buka halaman `request1.jsp` lewat URL: http://localhost:8080/BelajarJSP/request1.jsp?nama=Budi\
`?nama=Budi` akan dibaca sebagai parameter data dengan _id_ `nama`. Data ini dibaca dengan perintah `request.getParameter("nama")`.

## Request Type POST
Membaca data yang dikirim lewat _request type_ POST dibaca dengan cara yang sama (seperti pada file `request1.jsp`). Yang membedakan _request type_ ini adalah pada cara pengiriman datanya. Pengirimannya tidak bisa lewat URL, tapi harus lewat _form_.

file: `form2.jsp`
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="request1.jsp" method="post">
            <input name="nama" type="text">
            <button>Kirim</button>
        </form>
    </body>
</html>
```

Buka halaman `form2.jsp`, Isi text box, kemudian klik _Kirim_. Maka `request1.jsp` akan terbuka dengan menampilkan `nama` dari text box.