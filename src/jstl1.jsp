<%@page import="belajarjsp.Siswa"%>
<%@page import="belajarjsp.Daftar"%>
<%
    // mempersiapkan data
    Daftar daftar = new Daftar();
    Siswa siswa = new Siswa("555", "Rudi");
    Integer nilai = 70;
    
    // set attribut yang akan ditampilkan di view
    request.setAttribute("siswa", siswa);
    request.setAttribute("nilai", nilai);
    request.setAttribute("daftarsiswa", daftar.getList());
    
    // membuka view
    RequestDispatcher dispacher = request.getRequestDispatcher("view2.jsp");
    dispacher.forward(request, response);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menggunakan JSTL + TL</title>
    </head>
    <body>
        <!-- Expression Language -->
        EL: ${siswa.nama}<br>

        <!-- c:out -->
        c:out<br:
        <c:out value="${siswa.nama}" /><br>

        <!-- c:if -->
        <!-- perintah c:if tidak support ELSE -->
        <br>
        if<br>
        <c:if test="${nilai>70}">
            KAMU LULUS<br>
        </c:if>
        <c:if test="${nilai<=70}">
            KAMU TIDAK LULUS<br>
        </c:if>



        <!-- c:forEach -->
        <br>
        foreach<br>
        <c:forEach var="row" items="${daftarsiswa}">
            ${row.nama}<br>
        </c:forEach>

        <br/>
        Sebelum dirubah:<br>
        ${nilai}<br>
        <c:set var="nilai" value="100" />
        Sesudah dirubah:<br>
        ${nilai}<br>

    </body>
</html>
