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
        <title>JSP Page</title>
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
                    String sql = "INSERT INTO daftar (nama,nilai) values (?,?)";
                    PreparedStatement st = connection.prepareStatement(sql);
                    st.setString(1,"Budi");
                    st.setInt(2, 60);
                    ResultSet rs = st.executeUpdate(sql);
                }
                connection.close();
            } catch (Exception ex) {
                out.println("Unable to connect to database" + ex);
            }
        %>
    </body>
</html>
