<%@page import="dao.BookingDao,model.Booking"%>
<%@page errorPage="addbooking-error.jsp" %>
<jsp:useBean id="book" class="model.Booking"></jsp:useBean>
<jsp:setProperty property="*" name="book"/>

<%
int i=BookingDao.add(book);
if(i>0){
Booking b = BookingDao.getNewestRecord();
response.sendRedirect("addbooking-success.jsp?id=" + b.getId());
}else{
response.sendRedirect("addbooking-error.jsp");
}
%>