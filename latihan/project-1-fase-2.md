# Project Toko ATK - Fase 2

## Setup tabel `salesm` dan `salesd`

Anda bisa check diagram ERD untuk tabel yang akan kita buat pada [Project ATK - Fase 1](../latihan/project-1.md). Berikut query yang Anda bisa gunakan untuk menyiapkan tabel `salesm` dan `salesd`:

```sql
CREATE TABLE `salesd` (
  `id` int(11) NOT NULL,
  `salesId` varchar(16) NOT NULL,
  `barangId` varchar(16) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `salesm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime DEFAULT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `salesd`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `salesm`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `salesd` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
```

## Review `Barang`

file: `Source Package/tokoatk/Barang.java`
```java
package tokoatk;

import java.sql.*;
import java.util.ArrayList;

public class Barang {

    public String id;
    public String nama;
    public String jenis;
    public Integer harga;

    public boolean baca(String id) {
        Connection conn = null;
        PreparedStatement st;
        ResultSet rs;

        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "SELECT * from barang where id=?";
            st = conn.prepareStatement(sql);
            st.setString(1, id);
            rs = st.executeQuery();

            boolean result = rs.next();
            this.id = id;
            this.nama = rs.getString("nama");
            this.jenis = rs.getString("jenis");
            this.harga = rs.getInt("harga");
            conn.close();

            return result;
        } catch (Exception ex) {
            return false;
        }
    }

    public String getId() {
        return id;
    }

    public String getNama() {
        return nama;
    }

    public String getJenis() {
        return jenis;
    }

    public Integer getHarga() {
        return harga;
    }
    

    public boolean update() {
       
        Connection conn = null;
        PreparedStatement st;
        
        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "UPDATE barang set nama=?, jenis=?, harga=? where id=?";
            st = conn.prepareStatement(sql);
            st.setString(1, this.nama);
            st.setString(2, this.jenis);
            st.setInt(3, this.harga);
            st.setString(4, this.id);

            st.executeUpdate();

            conn.close();

            return true;
        } catch (Exception ex) {
            return false;
        }
    }
    
    
    
    public boolean hapus() {
        Connection conn = null;
        PreparedStatement st;
        
        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "DELETE FROM barang where id=?";
            st = conn.prepareStatement(sql);
            st.setString(1, id);

            st.executeUpdate();

            conn.close();

            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean tambah() {
        Connection conn = null;
        PreparedStatement st;

        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "INSERT INTO barang (id,nama,jenis,harga) values (?,?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, nama);
            st.setString(3, jenis);
            st.setInt(4, harga);
            st.executeUpdate();
            conn.close();
            
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
    
    public static ArrayList<Barang> getList() {
        Connection conn = null;
        PreparedStatement st;
        ResultSet rs;
        ArrayList<Barang> result = new ArrayList<Barang>();

        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "SELECT * from barang";
            st = conn.prepareStatement(sql);
            rs = st.executeQuery();

            while(rs.next()) {
                Barang entry = new Barang();
                entry.baca(rs.getString("id"));
                result.add(entry);
            }
            conn.close();

            return result;
        } catch (Exception ex) {
            return null;
        }
    }
}
```

file: `Web Pages/tokoatk/baranglist.jsp`
```jsp
<%@page import="tokoatk.Barang"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Barang> list = Barang.getList();
    
    request.setAttribute("list", list);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("baranglist.view.jsp");
    dispacher.forward(request, response);
%>
```

file: `Web Pages/tokoatk/baranglist.view.jsp`
```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barang List</title>
    </head>
    <body>
        <h1>Barang List</h1>
        <a href="formbarangtambah.jsp">barang baru</a>
        <hr>
    <c:forEach var="barang" items="${list}">
        ${barang.getId()} ${barang.getNama()} <fmt:formatNumber type = "number" pattern = "0,000" value = "${barang.getHarga()}" /><br>
    </c:forEach>
    </body>
</html>
```

file: `Web Pages/tokoatk/formbarangtambah.jsp`
```jsp
<%
    RequestDispatcher dispacher = request.getRequestDispatcher("formbarangtambah.view.jsp");
    dispacher.forward(request, response);
%>
```

file: `Web Pages/tokoatk/formbarangtambah.view.jsp`
```jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Barang</title>
    </head>
    <body>
        <h1>Add Barang</h1>
        <form action="barangtambah.jsp" method="post">
            ID: <input name="id"><br>
            Nama: <input name="nama"><br>
            Jenis: <input name="jenis"><br>
            Harga: <input name="harga" type="number"><br>
            <button type="submit">Tambah</button>
        </form>
    </body>
</html>
```

file: `Web Pages/tokoatk/barangtambah.jsp`
```jsp
<%@page import="tokoatk.Barang"%>
<%
    String id = request.getParameter("id").toString();
    String nama = request.getParameter("nama").toString();
    String jenis = request.getParameter("jenis").toString();
    Integer harga = Integer.parseInt(request.getParameter("harga"));
    
    Barang barang = new Barang();
    barang.id = id;
    barang.nama = nama;
    barang.jenis = jenis;
    barang.harga = harga;
    barang.tambah();
    
    response.sendRedirect("baranglist.jsp");
%>
```

## Sales

file: `Source Package/tokoatk/Sales.java`
```java
package tokoatk;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class Sales {
    public String id;
    public LocalDateTime waktu;
    public String username;
    
    public LocalDateTime getWaktu() {
        return waktu;
    }
    
    public String getId() {
        return id;
    }
    
    public String getUsername() {
        return username;
    }
    
    public boolean baca(String id) {
        Connection conn = null;
        PreparedStatement st;
        ResultSet rs;

        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "SELECT * from salesm where id=?";
            st = conn.prepareStatement(sql);
            st.setString(1, id);
            rs = st.executeQuery();

            boolean result = rs.next();
            this.id = rs.getString("id");
            //this.waktu = rs.getDate("waktu");
            // untuk sementara kita akan abaikan dulu field waktu ini
            this.username = rs.getString("username");
            conn.close();

            return result;
        } catch (Exception ex) {
            return false;
        }
    }
    
    public boolean tambah(String username) {
        Connection conn = null;
        PreparedStatement st;

        try {
            conn = DbConnection.connect();
            
            LocalDateTime dt = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMddHHmmssS");
            id = dt.format(formatter);

            // prepare select statement
            String sql = "INSERT INTO salesm (id,username) values (?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, username);
            st.executeUpdate();
            conn.close();
            
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
    
    public boolean hapus() {
        Connection conn = null;
        PreparedStatement st;
        
        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "DELETE FROM salesm where id=?";
            st = conn.prepareStatement(sql);
            st.setString(1, id);

            st.executeUpdate();

            conn.close();

            return true;
        } catch (Exception ex) {
            return false;
        }
    }
    
    public boolean addDetail(String barangId, Integer qty, Integer harga) {
        SalesDetail detail = new SalesDetail();
        detail.salesId = this.id;
        detail.barangId = barangId;
        detail.qty = qty;
        detail.harga = harga;
        return detail.tambah();
    }
    
    public ArrayList<SalesDetail> getDetail() {
        Connection conn = null;
        PreparedStatement st;
        ResultSet rs;
        ArrayList<SalesDetail> result = new ArrayList<SalesDetail>();

        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "SELECT * from salesd where salesId=?";
            st = conn.prepareStatement(sql);
            st.setString(1, this.id);
            rs = st.executeQuery();

            while(rs.next()) {
                SalesDetail entry = new SalesDetail();
                entry.baca(rs.getInt("id"));
                result.add(entry);
            }
            conn.close();

            return result;
        } catch (Exception ex) {
            return null;
        }
    }
    
    public static ArrayList<Sales> getList() {
        Connection conn = null;
        PreparedStatement st;
        ResultSet rs;
        ArrayList<Sales> result = new ArrayList<Sales>();

        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "SELECT * from salesm";
            st = conn.prepareStatement(sql);
            rs = st.executeQuery();

            while(rs.next()) {
                Sales entry = new Sales();
                entry.baca(rs.getString("id"));
                result.add(entry);
            }
            conn.close();

            return result;
        } catch (Exception ex) {
            return null;
        }
    }
}
```

file: `Source Package/tokoatk/SalesDetail.java`
```java
package tokoatk;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SalesDetail {
    public Integer id;
    public String salesId;
    public String barangId;
    public Integer qty;
    public Integer harga;
    
    public Integer getId() {
        return id;
    }
    
    public String getBarangId() {
        return barangId;
    }
            
    public String getBarangNama() {
        Barang barang = new Barang();
        barang.baca(barangId);
        return barang.getNama();
    }
            
    public Integer getQty() {
        return qty;
    }
        
    public Integer getHarga() {
        return harga;
    }
            
    public Integer getTotal() {
        return harga * qty;
    }
    
    public boolean tambah() {
        Connection conn = null;
        PreparedStatement st;

        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "INSERT INTO salesd (salesId,barangId,qty,harga) values (?,?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, salesId);
            st.setString(2, barangId);
            st.setInt(3, qty);
            st.setInt(4, harga);
            st.executeUpdate();
            conn.close();
            
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
            
    public boolean baca(Integer id) {
        Connection conn = null;
        PreparedStatement st;
        ResultSet rs;

        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "SELECT * from salesd where id=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, id);
            rs = st.executeQuery();

            boolean result = rs.next();
            this.id = id;
            this.salesId = rs.getString("salesId");
            this.barangId = rs.getString("barangId");
            this.qty = rs.getInt("qty");
            this.harga = rs.getInt("harga");
            conn.close();

            return result;
        } catch (Exception ex) {
            return false;
        }
    }
            
            
    public boolean hapus() {
        Connection conn = null;
        PreparedStatement st;
        
        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "DELETE FROM salesd where id=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, id);

            st.executeUpdate();

            conn.close();

            return true;
        } catch (Exception ex) {
            return false;
        }
    }
}
```

file: `Web Pages/tokoatk/formsalestambah.jsp`
```jsp
<%@page import="tokoatk.Sales"%>
<%
    String id;
    Sales sales = new Sales();
    if(request.getParameter("id")==null) {
        sales.tambah(session.getAttribute("fullname").toString());
    } else {
        sales.baca(request.getParameter("id"));
    }
    
    request.setAttribute("sales", sales);
    
    RequestDispatcher dispatcher = request.getRequestDispatcher("formsalestambah.view.jsp");
    dispatcher.forward(request, response);
%>
```

file: `Web Pages/tokoatk/formsalestambah.view.jsp`
```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Detail</title>
    </head>
    <body>
        <h1>Code: ${sales.getId()}</h1>
        <c:forEach var="row" items="${sales.getDetail()}">
            ${row.getId()} ${row.getBarangId()} ${row.getBarangNama()} ${row.getQty()} ${row.getHarga()} ${row.getTotal()}<br>
        </c:forEach>
        
        <form action="salesdetailtambah.jsp" method="post">
            <input type="hidden" name="salesId" value="${sales.getId()}">
            <input name="barangId">
            <input name="qty" type="number">
            <input name="harga" type="number">
            <button>Tambah</button>
        </form>
    </body>
</html>
```

file: `Web Pages/tokoatk/saleslist.jsp`
```jsp
<%@page import="java.util.ArrayList"%>
<%@page import="tokoatk.Sales"%>
<%
    ArrayList<Sales> list = Sales.getList();
    
    request.setAttribute("list", list);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("saleslist.view.jsp");
    dispacher.forward(request, response);
%>
```

file: `Web Pages/tokoatk/saleslist.view.jsp`
```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales List</title>
    </head>
    <body>
        <h1>Sales List</h1>
        <a href="formsalestambah.jsp">Transaksi Baru</a>
        <c:forEach var="row" items="${list}">
            ${row.getId()}<br>
        </c:forEach>
    </body>
</html>
```


file: `Web Pages/tokoatk/salesdetailtambah.jsp`
```jsp
<%@page import="tokoatk.Sales"%>
<%
    String salesId = request.getParameter("salesId").toString();
    String barangId = request.getParameter("barangId").toString();
    Integer qty = Integer.parseInt(request.getParameter("qty"));
    Integer harga = Integer.parseInt(request.getParameter("harga"));
    
    Sales sales = new Sales();
    sales.baca(salesId);
    sales.addDetail(barangId, qty, harga);
    response.sendRedirect("formsalestambah.jsp?id="+salesId);

%>
```

## Soal Latihan:
- Buat tabel `salesm` dan `salesd`
- Buat class `Sales` dan `SalesDetail` (lihat diagram di [Project ATK - Fase 1](../latihan/project-1.md))
- Buat halaman berikut:
  - `stocklist.jsp` dan `stocklist.view.jsp`: menampilkan list transaksi
  - `formstoctambah.jsp`, `formstocktambah.view`, `stocktambah.jsp`: untuk input detail transaksi baru