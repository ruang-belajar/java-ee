<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="belajarjsp.User" %>
<%
    // contoh array data
    User[] daftar = { 
        new User("Ayu","Dyah","P"),
        new User("Yuda","Darmawan","L"),
        new User("Laura","Himawan","P")
    };
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- mencetak elemen array secara manual -->
        <%= daftar[0].namaLengkap() %><br>
        <%= daftar[1].namaLengkap() %><br>
        <%= daftar[2].namaLengkap() %><br>
    </body>
</html>
