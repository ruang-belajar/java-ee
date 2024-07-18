# Soal 7

Perhatikan 2 file JSP dibawah ini.

**login.jsp**
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Halaman Login</title>
    </head>
    <body>
        <form action="____[a]____" method="post">
            Username: <input name="____[b]____"><br>
            Password: <input name="____[c]____"><br>
            <button type="submit">Login</button>
        </form>
    </body>
</html>
```

**dologin.jsp**
```jsp
<%
    String username = request.getParameter("namauser");
    String password = request.getParameter("passwd");
    
    if(____[d]____.equals("budi") && ____[e]____.equals("123")) {
        ______[f]______; // redirect ke halaman index.jsp
    } else {
        ______[g]______; // redirect ke kembali ke halaman login.jsp
    }    
%>
```

File **login.jsp** menampilkan form login, kemudian informasi login dikirimkan ke file **dologin.jsp** untuk diproses. Proses login tidak menggunakan database, hanya menggunakan logika _if_ sederhana.

Lengkapi bagian **a**, **b**, **c**, ... pada program diatas sehingga halaman tersebut bisa berfungsi.