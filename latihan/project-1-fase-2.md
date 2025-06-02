# Project Toko ATK - Fase 2

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