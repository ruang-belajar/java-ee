<%@page import="belajarjsp.Siswa"%>
<%@page import="belajarjsp.Daftar"%>
<%
    // mempersiapkan data
    Daftar daftar = new Daftar();
    Siswa siswa = new Siswa("555", "Rudi");
    Integer nilai = 70;
    
    // set attribut yang akan ditampilkan di view
    request.setAttribute("siswa", siswa);
    request.setAttribute("nilai", nilai);
    request.setAttribute("daftarsiswa", daftar.getList());
    
    // membuka view
    RequestDispatcher dispacher = request.getRequestDispatcher("view2.jsp");
    dispacher.forward(request, response);
%>