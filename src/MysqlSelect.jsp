<%-- 
    JSP test koneksi dan jalankan operasi select ke server MySql
    Pastikan Anda sudah menambahkan Mysql Connector di Library
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menampilkan Data</title>
    </head>
    <body>
        <%
            try {
                String connectionURL = "jdbc:mysql://localhost/test";
                Connection connection = null;
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(connectionURL, "root", "");
                if (!connection.isClosed()) {
                    out.println("Successfully connected to " + "MySQL server using TCP/IP...<br>");
                    
                    // Menampilkan data
                    out.print("<br>Menampilkan isi table <i>daftar</i><br>  ");
                    // prepare select statement
                    String sql = "SELECT * from daftar order by id desc limit 10";
                    PreparedStatement st = connection.prepareStatement(sql);
                    ResultSet rs = st.executeQuery(sql);
                    while(rs.next()) {
                        out.println("-"+rs.getString("nama")+" : "+rs.getString("nilai")+"<br>");
                    }
                }
                connection.close();
            } catch (Exception ex) {
                out.println("Unable to connect to database" + ex);
            }
        %>
    </body>
</html>
