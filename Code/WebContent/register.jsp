<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Hotel Booking</title>
     <link href="css/loginstyle.css" rel="stylesheet" type="text/css" media="all" />	

    <!-- Favicon -->
    <link rel="icon" href="./img/core-img/favicon.png">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
       <link href="css/loginstyle.css" rel="stylesheet" type="text/css" media="all" />	

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- /Preloader -->
<%
User tk=null;
if(session.getAttribute("user")!=null){
tk=(User) session.getAttribute("user");
}
String s="";
if(session.getAttribute("error")!=null)
{
	s=(String) session.getAttribute("error");
	}
%>
<!--header-->
 <jsp:include page="header.jsp"></jsp:include>
		
	<div class="container">
		<div class="account">
			<h2 class="account-in">Register</h2>
				<form action="RegisterController" method="POST">
				<div>
					<span class="word">Username*</span>
				<br>
					<input type="text" name="username" id="username">
					<span id ="user-result"></span>
				</div> 	
				<div>
					<span class="word">Firstname*</span>
				<br>
					<input type="text" name="firstname" id="fname">
					<span id ="user-result"></span>
				</div> 	
				<div>
					<span class="word">Lastname*</span>
				<br>
					<input type="text" name="lastname" id="lname">
					<span id ="user-result"></span>
				</div>
				<div>
					<span class="word">Email*</span>
				<br>
					<input type="text" name="email" id="email">
					<span id ="user-result"></span>
					
				</div>
				<div>
					<span class="word">Phone*</span>
				<br>
					<input type="text" name="phone" id="phone">
					<span id ="user-result"></span>
				</div> 	 	
				<div> 
					<span class="word">Password*</span>
						<br>
					<input type="password" name="password">
					<span></span>
				</div>
				
								
					<input type="submit" value="Register"> 
					<div>	
						<%if(s!=null){ %>
					<p style="color: red;"><%=s%></p>
					<%} %>
					</div>
				</form>
				</div>
				</div>

				

	<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->

    <!-- **** All JS Files ***** -->
    <!-- jQuery 2.2.4 -->
    <script src="js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- All Plugins -->
    <script src="js/roberto.bundle.js"></script>
    <!-- Active -->
    <script src="js/default-assets/active.js"></script>

</body>

</html>