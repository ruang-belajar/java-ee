# Project ATK - Fase 3

Fase 3 ini terkait dengan materi [API](../docs/api.md).

Edit file `baranglist.view.jsp` yang dibuat pada fase sebelumnya, dan buat file `api.baranggantinama.jsp` dan `api.barangstat.jsp`.

file (edit): `Web Pages/tokoatk/baranglist.view.jsp`
```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barang List</title>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Barang List</h1>
        <a href="formbarangtambah.jsp">barang baru</a>
        <hr>
    <c:forEach var="barang" items="${list}">
        ${barang.getId()} <span id="nama${barang.getId()}">${barang.getNama()}</span> <fmt:formatNumber type = "number" pattern = "0,000" value = "${barang.getHarga()}" />
        <button type="button" onclick="gantiNama('${barang.getId()}')">edit nama</button> <a href="baranghapus.jsp?id=${barang.getId()}">hapus</a> <br>
    </c:forEach>
        
        <button type="button" onclick="showStat()">Show Stat</button>
        
    </body>
    
    <script>
        function gantiNama(id) {
            let namabaru = prompt("Edit nama barang?");
            if(namabaru) {
                $.post("api.baranggantinama.jsp", {id:id, namabaru:namabaru}, function(result) {
                    $('#nama'+id).html(namabaru);
                });    
            }
            
        }
        
        function showStat()  {
            $.post("api.barangstat.jsp",function(result) {
               //alert(result); 
               let obj = JSON.parse(result);
               alert("Banyak data: "+obj.banyak+"\nRata-rata: "+obj.rata2);
            });
        }
    </script>
        
</html>
```

file: `Web Pages/tokoatk/api.baranggantinama.jsp`
```jsp
<%@page import="tokoatk.Barang"%>
<%
    String id = request.getParameter("id");
    String namabaru = request.getParameter("namabaru");
    
    Barang barang = new Barang();
    barang.baca(id);
    barang.nama = namabaru;
    if(barang.update()) {
        out.print("ok");
    } else {
        out.print("fail");
    }
%>
```

file: `Web Pages/tokoatk/api.barangstat.jsp`
```jsp
<%@page import="java.util.ArrayList"%>
<%@page import="tokoatk.Barang"%>
<%
    ArrayList<Barang> list = Barang.getList();
    
    Integer banyak = list.size();
    Integer total = 0;
    double rata2 = 0.0;
    for(Barang barang : list) {
        total = total + barang.harga;
    }
    rata2 = total/banyak;
    
    out.print("{ \"banyak\": "+banyak+", \"rata2\": "+rata2+" }");    
```

Proses hapus barang dilakukan dengan cara mengirimkan request ke `baranghapus.jsp` dengan menyertakan parameter `id`, kemudian redirect kembali ke `baranglist.jsp`.

Proses penggantian nama dilakukan via API dengan perintah `$.post()` (jQuery). Perintah `$('#nama'+id).html(namabaru)` memungkinkan kita mengubah sebagian text pada halaman tanpa reload seluruh halaman.