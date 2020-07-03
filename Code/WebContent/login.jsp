<%@page import="Model.User"%>
<%@page import="Controller.LoginController"%>
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

    <!-- Favicon -->
    <link rel="icon" href="./img/core-img/favicon.png">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <link href="css/loginstyle.css" rel="stylesheet" type="text/css" media="all" />	

</head>

<body>
<%
String s="";
if(session.getAttribute("e")!=null)
{
	s=(String) session.getAttribute("e");
	}
%>
   <!--header-->
  <jsp:include page="header.jsp"></jsp:include>

		
	<div class="container">
		<div class="account">
			<h2 class="account-in">Login</h2>
				<form action="LoginController" method="POST">
			
				<div>
					<span class="word">UserName *</span>
					<input type="text" name="username">
				</div> 	
				
				<div> 
					<span class="word">Password *</span>
					<input type="password" name="password">
					<span></span>
				</div>		
			
					<input type="submit" value="Login"> 
					<div>	
						<%if(s!=null){ %>
					<p style="color:red;"><%=s%></p>
					<%} %>
					</div>
					<a href="./register.jsp" >Sign in</a>
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