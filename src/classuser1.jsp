<%@page import="belajarjsp.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user = new User("Budi","Arman","L");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Menggunakan class User</h1>
        <%= user.namaBelakang %>, <%= user.namaDepan %><br>
        Nama lengkap: <%= user.namaLengkap() %>
                
    </body>
</html>
