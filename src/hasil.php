<%-- 
    Document   : tampil_post
    Created on : Mar 28, 2024, 5:55:48 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Latihan Pembuatan Form</title>
    </head>
    <body>
        <h3>JSP Form Metode POST</h3>
        <table border="0">
            <tr>
                <td width="70px">Nama</td>
                <td width="10px">:</td>
                <td><%=$_POST['nama']%></td>
            </tr> 
            <tr>
                <td>Nilai</td>
                <td>:</td>
                <td><%=$_POST['nilai']%></td>
            </tr>
            <tr>
                <td>Hasil</td>
                <td>:</td>
                <td>
                    <?php 
                        $nilai = $_POST['nilai'];
                        if($nilai>60) {
                            echo "LULUS";
                        } else {
                            echo "TIDAK LULUS";
                        }
                    ?>
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center"><a href="input_nilai.php">Back to Page</a> 
                </td>
            </tr>
        </table> 
    </body>
</html>
