/*
    berikut adalah contoh penggunaan class untuk keperluan baca/tulis
    ke dabatase.
*/

package kampus;  // rubah nama paket sesuai dengan paket yang Anda miliki

import java.sql.*;

public class Mahasiswa1 {
    public String nim;
    public String nama;
    public Double ipk;

    public Mahasiswa() {
        this.nim = "";
        this.nama = "";
        this.ipk = 0.0;
    }

    public void baca(String nim) {
        // deklarasi variable yang bisa diakses di seluruh halaman
        Connection connection = null;
        ResultSet rs = null;

        try {
            String connectionURL = "jdbc:mysql://localhost/test";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, "root", "");

            if (!connection.isClosed()) {
                // prepare select statement
                String sql = "SELECT * FROM mahasiswa where nim=?";
                PreparedStatement st = connection.prepareStatement(sql);
                st.setString(1, nim);
                rs = st.executeQuery();
                
                if(rs.next()) {
                    this.nim = rs.getString("nim");
                    this.nama = rs.getString("nama");
                    this.ipk = rs.getDouble("ipk");
                }
                
            }
        } catch (Exception ex) {
            System.out.println("Error "+ex.toString());
        }
    }

    public void tambah() {
        // deklarasi variable yang bisa diakses di seluruh halaman
        Connection connection = null;

        try {
            String connectionURL = "jdbc:mysql://localhost/test";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, "root", "");

            if (!connection.isClosed()) {
                // prepare select statement
                String sql = "INSERT INTO mahasiswa (nim,nama,ipk) values (?,?,?)";
                PreparedStatement st = connection.prepareStatement(sql);
                st.setString(1, this.nim);
                st.setString(2, this.nama);
                st.setDouble(3, this.ipk);
                st.executeUpdate();
            }
            connection.close();
        } catch (Exception ex) {
            //
        }
    }

    // melakukan data dengan cara seperti tambah() dan baca(), memiliki redudansi
    // kode untuk membuat koneksi. Hal ini tidak efisien.
    // Masalah lain adalah, jika ada perubahan konfigurasi database (username/
    // password/database) maka perubahan harus dilakukan di banyak bagian.
    // Untuk mengatasi masalah ini, kita membuat class DatabaseTest, sehingga
    // setting dan perubahan konfigurasi database dilakukan di satu tempat.
    public void hapus() {
        Connection connection = null;
        try {
            connection = DatabaseTest.connect();

            if (!connection.isClosed()) {
                // prepare select statement
                String sql = "DELETE FROM mahasiswa WHERE nim=?";
                PreparedStatement st = connection.prepareStatement(sql);
                st.setString(1, this.nim);
                st.executeUpdate();
            }
            connection.close();
        } catch (Exception ex) {
        }
    }
    
    public void update() {
        Connection connection = null;
        try {
            connection = DatabaseTest.connect();

            if (!connection.isClosed()) {
                // prepare select statement
                String sql = "UPDATE mahasiswa SET nama=?, ipk=? WHERE nim=?";
                PreparedStatement st = connection.prepareStatement(sql);
                st.setString(1, this.nama);                
                st.setDouble(2, this.ipk);                
                st.setString(3, this.nim);

                st.executeUpdate();
            }
            connection.close();
        } catch (Exception ex) {
        }
    }
}
