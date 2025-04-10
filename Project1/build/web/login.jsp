<%
  String nama = request.getParameter("username").toString();
  String password = request.getParameter("password").toString();
  
  if(nama.equals("budi") && password.equals("123")) {
    response.sendRedirect("home.jsp");
    session.setAttribute("login", nama);
  } else {
    response.sendRedirect("formlogin.jsp");
  }
%>