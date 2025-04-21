<%-- baris berikut diperlukan jika Anda mau menggunakan JSTL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${siteId}</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </head>
    <body>
        <!-- CONTENT: hapus/rubah sesuai kebutuhan -->
        <!-- contoh judul -->
        <div class="jumbotron">
            <h1 class="display-4">
                Halo
                <c:if test="${login!=''}">
                    ${sessionLogin}
                </c:if>
                <c:if test="${login==''}">
                    User
                </c:if>
            </h1>
        </div>
        <!-- END: CONTENT -->
    </body>
</html>
