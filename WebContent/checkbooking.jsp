<%@page import="dao.BookingDao,model.Booking"%>
<%@page errorPage="checkbooking-error.jsp" %>

<%
String id = request.getParameter("id");
Booking b = BookingDao.getRecordById(Integer.parseInt(id));
System.out.println(b.getId());

response.sendRedirect("checkbooking-success.jsp?id=" + b.getId());
%>