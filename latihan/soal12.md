# Soal 12

**file: form.jsp**
```jsp
<%
    RequestDispatcher dispacher = request.getRequestDispatcher("form.view.jsp");
    dispacher.forward(request, response);
%>
```

**file: form.view.jsp**
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Nilai</title>
    </head>
    <body>
        <form action="____(a)____" method="post">
            Nilai <input name="nilai">
            <button type="submit">Proses</button>
        </form>
    </body>
</html>
```

**file: proses.jsp**
```jsp
<%
    String nilai = request._____(b)_____("nilai").toString();
    
    request._____(c)_____("nilai", nilai);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("____(d)____");
    dispacher.forward(request, response);
%>
```

**file: proses.view.jsp**
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hasil Ujian</title>
    </head>
    <body>
        <c:if test="_____(e)_____">
            KAMU LULUS<br>
        </c:if>
        <c:if test="____(f)____">
            KAMU TIDAK LULUS<br>
        </c:if>
    </body>
</html>
```

Halaman JSP sederhana yang menerima input nilai (_form.jsp_), kemudian mengirimkannya ke file _proses.jsp_.

_proses.jsp_ akan menampilkan _KAMU LULUS_ jika nilai yang diinput sebelumnya lebih dari 60, jika kurang dari atau sama dengan 60, maka tampilkan KAMU TIDAK LULUS

Isi **(a), (b), (c), (d), (e), (f)** sehingga halaman JSP bisa menampilkan hasil seperti yang diuraikan di atas.