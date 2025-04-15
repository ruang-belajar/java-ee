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
        <!-- mencetak menggunakan for untuk setiap item pada array -->
        <% for (User user : daftar) { %>
            <%= user.namaLengkap() %><br>
        <% } %>
    </body>
</html>
