<%@page import="dao.BookingDao,model.Booking"%>
<%
String id = request.getParameter("id");
Booking b = BookingDao.getRecordById(Integer.parseInt(id));
%>
<html>
    <head>
    <link rel="stylesheet" href="addbooking-success.css" type="text/css">
    <title>success</title>
    </head>
<body>
    <center>    
   <div class="form-area">
        <h3>Your Transaction has been saved</h3>
       <form action="">
	<br>
        <p>
	With Booking Number : <font size="3" color="red"> <%= b.getId() %> </font>
        <p>
	you must finish your payment with amount <font size="3" color="red">Rp. <%= b.getTotalprice() %> </font> 
        <br>
	to BCA account number  <font size="3" color="red">7737716994</font>	
	<p>
        <br>
	if you haven't done the payment until 2 days since this message sended
	<br>
	your booking status will be rejected
	<p>
	<br>
	Please contact us at 0812319229 to check your booking status!
	<p>
	Have a great day !
        <br>
        <br>
	<a href="index.html">
        <button type="button" value="Back">Back To Main Site</button>
        </a>
        </form>
        </div>
        </center>
        </body>
</html>