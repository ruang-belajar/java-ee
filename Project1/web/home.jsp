<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nama = (String) session.getAttribute("login");

    if (nama == null) {
        response.sendRedirect("formlogin.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Hello <%= nama %></h1>
        <form action="logout.jsp" method="post">
            <button type="submit">Logout</button>
        </form>
    </body>
</html>
