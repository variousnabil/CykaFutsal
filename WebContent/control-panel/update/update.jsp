<%@page import="dao.BookingDao"%>
<jsp:useBean id="b" class="model.Booking"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
int i=BookingDao.update(b);
response.sendRedirect("../table.jsp");
%>