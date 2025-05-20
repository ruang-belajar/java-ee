# Soal 11

File: `looping1.jsp`
```jsp
<%
    String[] mahasiswa = {
        "Andi",
        "Budi",
        "Citra",
        "Dewi",
        "Eka"
    }

    _______(a)________.("mahasiswa", "mahasiswa");
    
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contoh c:forEach di JSP</title>
</head>
<body>
    <h2>Daftar Nama Mahasiswa:</h2>

    <!-- Siapkan data list -->
    <ul>
        <!-- Loop dengan c:forEach -->
        _____(b)_____
            <li>${nama}</li>
        _____(c)_____
    </ul>
</body>
</html>
```

**Contoh Output:**
```
* Andi
* Budi
* Citra
* Dewi
* Eka
```

## Soal 1:
Lengkapi (a), (b), (c) sehingga program `looping1.jsp` memberikan output seperti pada contoh.