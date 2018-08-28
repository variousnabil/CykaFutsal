<% 
session.removeAttribute("user");
session.removeAttribute("pass");
session.invalidate();
response.sendRedirect("../login/login.html");
%>