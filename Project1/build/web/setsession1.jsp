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