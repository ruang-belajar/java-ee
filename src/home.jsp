<%-- import class (jika diperlukan) --%>
<%@page import="belajarjsp.Site"%>
<%
    // membaca request dan session  
    if(session.getAttribute("login")!=null) {
        Site.sessionLogin = session.getAttribute("login").toString();
    } else {
        Site.sessionLogin = "";
    }
    
    // mengolah data
    //
    //
    
    // set data yang akan ditampilkan ke view
    request.setAttribute("siteId", Site.id);
    request.setAttribute("login", Site.sessionLogin);
    
    // membuka view
    // sesuaikan nama file (.jsp) dengan nama file view yang akan tampilkan
    RequestDispatcher dispacher = request.getRequestDispatcher("home.view.jsp");
    dispacher.forward(request, response);
%>