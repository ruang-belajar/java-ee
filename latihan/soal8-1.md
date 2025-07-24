# Soal 8

Berikut contoh menampilkan daftar dosen menggunakan menthod `getList()` pada class `Dosen`.

file **daftar_dosen.jsp**

```java
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="kampus.Dosen" %>
<%
    List<Dosen> data = Dosen.getList();
    request.setAttribute("data", data);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Dosen</title>
    </head>
    <body>
        __________(a)_________
        <c:forEach var=_____(b)_____ items=____(c)____>
            >> ${row.nama}<br>
        </c:forEach>
            
    </body>
</html>
```

Program diatas menampilkan output daftar _NID_ dan _Nama_ dosen seperti berikut.

![](res/soal8-1.png)

---

Tuliskan kode program pada bagian yang ditandai **(a)**, **(b)**, **(c)**

**Catatan:** daftar dibuat tanpa menggunakan tag `<ul>`, `<li>`