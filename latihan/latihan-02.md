# Latihan 2: Session

Persiapkan file-file berikut, kemudian coba jalankan.

**file::** `form5.jsp`
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="setsession1.jsp" method="post">
            <input name="nama" type="text">
            <button>Kirim</button>
        </form>
        <a href="showsession1.jsp">Tampilkan Session</a><br>
        <a href="removesession1.jsp">Hapus Session</a>
    </body>
</html>
```

**file::** `setsession1.jsp`
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nama = request.getParameter("nama");
    session.setAttribute("nama", nama);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Session diset menjadi <%= nama %><br>
        <a href="form5.jsp">Kembali ke form</a>
    </body>
</html>
```

**file::** `showsession1.jsp`
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nama;
    nama = session.getAttribute("nama").toString();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Session nama = <%= nama %><br>
        <a href="form5.jsp">Kembali ke form</a>
    </body>
</html>
```

**file::** `removesession1.jsp`
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    session.removeAttribute("nama");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Session telah dihapus<br>
        <a href="form5.jsp">Kembali ke form</a>
    </body>
</html>
```

Cobalah program di atas dengan cara memulai mengisi `form5.jsp`.\
Bisakah Anda menyimpulkan cara kerja _session_?

Jika `showsession.jsp` dipanggil sebelum atribut `nama` diset, maka sistem akan menampilkan _runtime error_. Bagaimana mencegah runtime error itu muncul?