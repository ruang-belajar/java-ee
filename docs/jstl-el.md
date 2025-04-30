# JSTL + EL

JSTL (_Java Standard Tag Language_) dan EL (_Expression Language_) di Java EE ini merupakan fitur khusus yang digunakan untuk membantu pembangunan web, terutama terkait penerapan model pengembangan MVC (_Model-View-Controller_).

## Setup
Untuk bisa menggunakan JSTL, Anda perlu menambahkan library JSTL ini ke dalam project. Caranya:
1. Klik kanan pada project - **Libraries**
2. Pilih **Add Libraries**
3. Pilih **JSTL x.x.x**
4. Klik **Add Library**\
   ![](res/jstl-1.png)

## Contoh JSTL + EL
Berikut ini contoh penggunaan JSTL juga implementasi class yang akses oleh halaman JSP lewat JSTL.

file: **User.java**
```java
package belajarjsp;

public class User {
    public String namaDepan;
    public String namaBelakang;
    public String jenisKelamin;
    public Integer gaji;
    
    public User(String namaDepan, String namaBelakang, String jenisKelamin, Integer gaji) {
        this.namaDepan = namaDepan;
        this.namaBelakang = namaBelakang;
        this.jenisKelamin = jenisKelamin;
        this.gaji = gaji;
    }
    
    public String namaLengkap() {
        return this.namaDepan+" "+this.namaBelakang;
    }

    public String getJenisKelamin() {
        return this.jenisKelamin;
    }

    public Integer getGaji() {
        return this.gaji;
    }

}
```

file: **jstlel.jsp**
```jsp
<%@page import="belajarjsp.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User siswa = new User("Budi", "Raharjo", "L", 3000000);
    Integer nilai = 70;

    User[] daftar = {
        new User("Ayu", "Dyah", "P", 3000000),
        new User("Yuda", "Darmawan", "L", 4000000),
        new User("Laura", "Himawan", "P", 5000000)
    };

    // set attribut
    request.setAttribute("siswa", siswa);
    request.setAttribute("nilai", nilai);
    request.setAttribute("daftarsiswa", daftar);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Expression Language -->
        EL: ${siswa.namaLengkap()}<br>
        <br>

        <!-- c:out -->
        <c:out value="${siswa.namaLengkap()}" /><br>

        <br>
        
        <!-- c:if -->
        <!-- perintah c:if tidak support ELSE -->
        <c:if test="${nilai>70}">
            KAMU LULUS<br>
        </c:if>
        <c:if test="${nilai<=70}">
            KAMU TIDAK LULUS<br>
        </c:if>

        <br>

        <!-- c:forEach -->
        <c:forEach var="row" items="${daftarsiswa}">
            ${row.namaLengkap()} - ${row.jenisKelamin} -  ${row.gaji}<br>
        </c:forEach>

    </body>
</html>
```