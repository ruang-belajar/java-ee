<%-- 
    JSP execute update query mysql
    Pastikan Anda sudah menambahkan Mysql Connector di Library
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hapus Data</title>
    </head>
    <body>
        <%
            try {
                Integer id = 1; // rubah sesuai dengan data yang akan dihapus

                String connectionURL = "jdbc:mysql://localhost/test";
                Connection connection = null;
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(connectionURL, "root", "");
                if (!connection.isClosed()) {
                    out.println("Successfully connected to " + "MySQL server using TCP/IP...<br>");
                    
                    // Menampilkan data
                    out.print("<br>Menampilkan isi table <i>daftar</i><br>  ");

                    // prepare select statement
                    String sql = "DELETE FROM daftar WHERE id=?";
                    PreparedStatement st = connection.prepareStatement(sql);
                    st.setInt(1,id); 
                    ResultSet rs = st.executeUpdate(sql);
                }
                connection.close();
            } catch (Exception ex) {
                out.println("Unable to connect to database" + ex);
            }
        %>
    </body>
</html>
