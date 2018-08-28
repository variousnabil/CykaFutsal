<%@ page import="dao.BookingDao" %>
<jsp:useBean id="b" class="model.Booking"></jsp:useBean>
<jsp:setProperty property="*" name="b" />

<%
	BookingDao.delete(b);
	response.sendRedirect("table.jsp");
%>