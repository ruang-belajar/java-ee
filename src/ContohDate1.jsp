<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Waktu sekarang:
        <%
            Date sekarang = new Date();
            out.println(sekarang.toString());
        %>
        <Br>
        Bisa juga di cetak menggunakan <code>&lt;%= ... %&gt;</code>
        <%= sekarang.toString() %>
    </body>
</html>
