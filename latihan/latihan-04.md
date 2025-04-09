# Latihan 4

Buat class java berikut:\
**User.class**
```java
package belajarjsp;

public class User {
    public String namaDepan;
    public String namaBelakang;
    public String jenisKelamin;
    
    public User(String namaDepan, String namaBelakang, String jenisKelamin) {
        this.namaDepan = namaDepan;
        this.namaBelakang = namaBelakang;
        this.jenisKelamin = jenisKelamin;
    }
    
    public String namaLengkap() {
        return this.namaDepan+" "+this.namaBelakang;
    }
    
}
```

> 🟡 Sesuaikan nama package sesuai kebutuhan

Buat 4 file _jsp_ dengan isi sebagai berikut:\
**classuser1.jsp**
```jsp
<%@page import="belajarjsp.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user = new User("Budi","Arman","L");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Menggunakan class User</h1>
        <%= user.namaBelakang %>, <%= user.namaDepan %><br>
        Nama lengkap: <%= user.namaLengkap() %>
                
    </body>
</html>
```

**classuser2.jsp**
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="belajarjsp.User" %>
<%
    // contoh array data
    User[] daftar = { 
        new User("Ayu","Dyah","P"),
        new User("Yuda","Darmawan","L"),
        new User("Laura","Himawan","P")
    };
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- mencetak elemen array secara manual -->
        <%= daftar[0].namaLengkap() %><br>
        <%= daftar[1].namaLengkap() %><br>
        <%= daftar[2].namaLengkap() %><br>
    </body>
</html>
```

**classuser3.jsp**
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="belajarjsp.User" %>
<%
    // contoh array data
    User[] daftar = { 
        new User("Ayu","Dyah","P"),
        new User("Yuda","Darmawan","L"),
        new User("Laura","Himawan","P")
    };
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- loop menggunakan for -->
        <% for (int i = 0; i < daftar.length; i++) { %>
            <%= daftar[i].namaLengkap() %><br>
        <% } %>
    </body>
</html>
```

**classuser4.jsp**
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="belajarjsp.User" %>
<%
    // contoh array data
    User[] daftar = { 
        new User("Ayu","Dyah","P"),
        new User("Yuda","Darmawan","L"),
        new User("Laura","Himawan","P")
    };
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- mencetak menggunakan for untuk setiap item pada array -->
        <% for (User user : daftar) { %>
            <%= user.namaLengkap() %><br>
        <% } %>
    </body>
</html>
```

## 🙋‍♀️🙋‍♂️ DISKUSI
- Apa maksud perintah:\
  ```java
  <%@page import="belajarjsp.User"%>
  ```
- Apa yang dikerjakan perintah:\
  ```java
  User[] daftar = { 
        new User("Ayu","Dyah","P"),
        new User("Yuda","Darmawan","L"),
        new User("Laura","Himawan","P")
  };
  ```
- Apa perbedaan keempat program diatas?

## Soal Latihan
### Soal 1
Buat program (file: `classuser5.jsp`) untuk mencetak array `daftar` menggunakan perintah `while`

### Soal 2
Buat program (file: `classuser6.jsp`) untuk mencetak array `daftar` menjadi bentuk _dropdown_ atau _listbox_

### Soal 3
Buat program (file: `classuser7.jsp`) untuk mencetak array daftar menjadi bentuk ordered list `<ol>` atau unordered list `<ul>`.

### Soal 4
Buat program (file: `classuser8.jsp`) untuk mencetak array daftar menjadi bentuk tabel. Untuk masing-masing baris, tambahkan nomor baris.
