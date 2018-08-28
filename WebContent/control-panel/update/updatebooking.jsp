<%@ page import="dao.BookingDao,model.Booking"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String id = request.getParameter("id");
Booking b = BookingDao.getRecordById(Integer.parseInt(id));
%>
<c:set var="kindfield" value="<%= b.getKindfield() %>"></c:set>

<link rel="stylesheet" href="css/radio.css">
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Update Booking</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

<!--===============================================================================================-->

<script type="text/javascript">
	$(window).ready(function(){
		if(document.form1.kindfield.value == "synthetic grass field"){
			document.form1.price.value = 100000;
		} else if(document.form1.kindfield.value == "cement field"){
			document.form1.price.value = 80000;
		}
		
		
	});
	function changeId(){
		alert("sorry, id can't be change!");
		document.form1.id.value = <%= b.getId() %>;
	}
	function calculateTotal(){
		var kindfield = document.form1.kindfield.value;
		var price = 100000;
		if(kindfield ==  "synthetic grass field" ){
			price = 100000;
		} else if(kindfield == "cement field"){
			price = 80000;
		}
		
		var bookhour = document.form1.bookhour.value;
		
		document.form1.totalprice.value = price * bookhour;
	}
	
	//validate the totalprice in form1
	function changetot(){
		alert("the total can't be change!");
		calculateTotal();
	}
</script>
</head>
<body>
	<div class="container-contact100" style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" method="post" action="update.jsp" name="form1">
				<span class="contact100-form-title">
					Update Booking
				</span>

				<div class="wrap-input100">
					<span class="label-input100">Id</span>
					<input class="input100" type="text" name="id" value="<%= b.getId() %>" onblur="changeId()" >
				</div>

				<div class="wrap-input100">
					<span class="label-input100">Name</span>
					<input class="input100" type="text" name="name" value="<%= b.getName() %>">
				</div>

				<div class="wrap-input100">
					<span class="label-input100">Email</span>
					<input class="input100" type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" value="<%= b.getEmail() %>" >
				</div>

				<div class="wrap-input100">
					<span class="label-input100">Phone Number</span>
					<input class="input100" type="text" name="hp" pattern="[0-9]+" value="<%= b.getHp() %>">
				</div>

				<div class="wrap-input100">
					<span class="label-input100">Book Date</span>
					<input class="input100" type="date" name="bookdate" value="<%= b.getBookdate() %>">
				</div>

				<div class="wrap-input100">
					<span class="label-input100">Kind Of Field</span><!--  <input
						class="input100" type="text" name="kindfield"
						onblur="calculateTotal()" value="<%= b.getKindfield() %>"> -->

					<div class="radio">

						<input id="radio-1" name="kindfield" type="radio" value="synthetic grass field" onclick="calculateTotal()" required="required" <c:if test="${kindfield=='synthetic grass field'}">checked</c:if>> <label
							for="radio-1" class="radio-label" onclick="calculateTotal()">synthetic grass field </label>
					</div>

					<div class="radio">
						<input id="radio-2" name="kindfield" type="radio" value="cement field" onclick="calculateTotal()" required="required" <c:if test="${kindfield=='cement field'}">checked</c:if>> <label	
							for="radio-2" class="radio-label" onclick="calculateTotal()">cement field</label>
					</div>

				</div>


				<div class="wrap-input100">
					<span class="label-input100">Book Hour</span>
					<input class="input100" type="text" name="bookhour" pattern="[0-9]+" onblur="calculateTotal()" value="<%= b.getBookhour() %>">
				</div>

				<div class="wrap-input100">
					<span class="label-input100">Total Price</span>
					<input class="input100" type="text" name="totalprice" pattern="[0-9]+" onblur="changetot();calculateTotal();" value="<%= b.getTotalprice() %>">
				</div>
				
				<div class="wrap-input100">
					<span class="label-input100">Status</span>

					<div class="radio">

						<input id="radio-3" name="status" type="radio" value="Accepted" required="required"> <label
							for="radio-3" class="radio-label">accepted</label>
					</div>

					<div class="radio">
						<input id="radio-4" name="status" type="radio" value="Rejected" required="required"> <label	
							for="radio-4" class="radio-label">rejected</label>
					</div>

				</div>
				

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							Submit
						</button>
					</div>
				</div>
			</form>
		</div>

		<span class="contact100-more">
				The Cyka Futsal
		</span>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
