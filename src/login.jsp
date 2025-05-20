<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    if (user.equals("user") && pass.equals("123")) {
        // redirect ke halaman 'home.jsp'
    } else {
        // redirect ke halaman 'error.jsp'
    }
%>
