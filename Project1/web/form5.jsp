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