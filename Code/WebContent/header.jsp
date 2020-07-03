<%@page import="java.util.Map"%>

<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<%
User tk= null;
if(session.getAttribute("user")!=null)
{
	tk= (User)session.getAttribute("user");
	}



%>
 <!-- Header Area Start -->
    <header class="header-area">
        <!-- Search Form -->
        <div class="search-form d-flex align-items-center">
            <div class="container">
                <form action="index.html" method="get">
                    <input type="search" name="search-form-input" id="searchFormInput" placeholder="Type your keyword ...">
                    <button type="submit"><i class="icon_search"></i></button>
                </form>
            </div>
        </div>

        <!-- Top Header Area Start -->
        <div class="top-header-area">
            <div class="container">
                <div class="row">

                    <div class="col-6">
                        <div class="top-header-content">
                            <a href="#"><i class="icon_phone"></i> <span>(+84) 032 775 4318</span></a>
                            <a href="#"><i class="icon_mail"></i> <span>joyhan283@gmail.com</span></a>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="top-header-content">
                            <!-- Top Social Area -->
                            <div class="top-social-area ml-auto">
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Top Header Area End -->
        	<div class="header-in">
					<ul class="icon1 sub-icon1">
					
							<%if(tk!=null){ %>
					<li><a href="info.jsp"><%=tk.getUserName()%></a></li>
					<%} %>
					<%if(tk==null){ %>
							<li><a href="login.jsp">  Login</a></li>
					
							<li><a href="Register.jsp">Register</a></li>
		<%} %>
							<li> <a href="checkout.jsp" >Your Room</a> </li>	
									<%if(tk!=null){ %>
					<li> <a href="LoginController?action=Logout" >Logout</a> </li>	
					<%} %>
							
						
						 
					      <div class="clearfix"></div>
						</ul>
							</li>
						</ul>
				</div>
				<div class="clearfix"> </div>

        <!-- Main Header Start -->
        <div class="main-header-area">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justify-content-between" id="robertoNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="index.html"><img src="./img/core-img/hotellogo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">
                            <!-- Menu Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>
                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul id="nav">
                                    <li class="active"><a href="./home.jsp">Home</a></li>
                                    <li><a href="./room.jsp">Rooms</a></li>
                                    <li><a href="./">About Us</a></li>
                                
                                    <li><a href="./">News</a></li>
                                    <li><a href="./contact.jsp">Contact</a></li>
                                </ul>

                                <!-- Search -->
                                <div class="search-btn ml-4">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div>

                                <!-- Book Now -->
                                <div class="book-now-btn ml-3 ml-lg-5">
                                  <a href="./booking.jsp">Booking <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->


	
</body>
</html>