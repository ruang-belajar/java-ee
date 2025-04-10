<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  String nama = session.getAttribute("login").toString();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <%= nama %> </h1>
    </body>
</html>
