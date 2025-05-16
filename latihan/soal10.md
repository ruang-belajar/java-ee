# Soal 10

File: `controller3.jsp`
```jsp
<%
    Integer panjang = 10;
    Integer lebar = 20;
    Integer luas = panjang * lebar;
    
    request.setAttribute("panjang", panjang);
    request.setAttribute("lebar", lebar);
    request.setAttribute("luas", luas);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("____(a)____");
    dispacher.forward(request, response);
%>
```

File: `view3.jsp`
```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soal 3</title>
    </head>
    <body>
        Luar Persegi:<br>
        Panjang x Lebar = Luas<br>
        _____(b)_____

    </body>
</html>
```

**Soal 1:**<br>
Lengkapi **(a)** sehingga ketika membuka halaman `controller3.jsp` akan muncul:
```
Luar Persegi:
Panjang x Lebar = Luas
10 x 20 = 200
```
