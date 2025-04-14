<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.removeAttribute("login");
    response.sendRedirect("formlogin.jsp");
%>
