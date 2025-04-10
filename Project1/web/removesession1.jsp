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