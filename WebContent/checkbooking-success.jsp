<%@page import="dao.BookingDao,model.Booking"%>
<%
String id = request.getParameter("id");
Booking b = BookingDao.getRecordById(Integer.parseInt(id));
%>
<html>
    <head>
    <link rel="stylesheet" href="checkbooking.css" type="text/css">
    <title>Result</title>
    </head>
    <body>
    <center>    
   <div class="form-area">
       <h3>Check Booking Result</h3>
       <form action="">
        <br>
        <p>
	Booking Number :
	<font size="3"> <%= b.getId() %> </font>
        <p>
        <br>
	<p>
	Booking Status :  
	"<%= b.getStatus() %>"
	<p>
        <br>
        <br>
	<a href="index.html">
        <button type="button" value="Back">Back To Main Site</button>
        </a>
        <br>
        <br>
        <h5>*Please do payment if your booking status still "Waiting" Transfer to account number BRI = 317901000163254</h5> 
        </form>
   </div>
        </center>
</body>
</html>