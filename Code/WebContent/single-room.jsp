<%@page import="Model.Room"%>
<%@page import="Controller.Database"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Title -->
<title>Hotel Booking</title>

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

		<!--header-->
  <jsp:include page="header.jsp"></jsp:include>
   <!--header-->

	<!-- Breadcrumb Area Start -->
	<div class="breadcrumb-area bg-img bg-overlay jarallax"
		style="background-image: url(img/bg-img/16.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-end">
				<div class="col-12">
					<div
						class="breadcrumb-content d-flex align-items-center justify-content-between pb-5">
						<%
							Room r = (Room) request.getAttribute("room");
						%>
						<h2 class="room-title">
							<%=r%></h2>
						<h2 class="room-price">
							$<%=r.getRoom_price()%><span>/ Per Night</span>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Area End -->

	<!-- Rooms Area Start -->
	<div class="roberto-rooms-area section-padding-100-0">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8">
					<!-- Single Room Details Area -->
					<div class="single-room-details-area mb-50">
						<!-- Room Thumbnail Slides -->
						<div class="room-thumbnail-slides mb-50">
							<div id="room-thumbnail--slide" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img src="img/bg-img/48.jpg" class="d-block w-100" alt="">
									</div>
									<div class="carousel-item">
										<img src="img/bg-img/49.jpg" class="d-block w-100" alt="">
									</div>
									<div class="carousel-item">
										<img src="img/bg-img/50.jpg" class="d-block w-100" alt="">
									</div>
									<div class="carousel-item">
										<img src="img/bg-img/51.jpg" class="d-block w-100" alt="">
									</div>
									<div class="carousel-item">
										<img src="img/bg-img/52.jpg" class="d-block w-100" alt="">
									</div>
								</div>

								<ol class="carousel-indicators">
									<li data-target="#room-thumbnail--slide" data-slide-to="0"
										class="active"><img src="img/bg-img/48.jpg"
										class="d-block w-100" alt=""></li>
									<li data-target="#room-thumbnail--slide" data-slide-to="1">
										<img src="img/bg-img/49.jpg" class="d-block w-100" alt="">
									</li>
									<li data-target="#room-thumbnail--slide" data-slide-to="2">
										<img src="img/bg-img/50.jpg" class="d-block w-100" alt="">
									</li>
									<li data-target="#room-thumbnail--slide" data-slide-to="3">
										<img src="img/bg-img/51.jpg" class="d-block w-100" alt="">
									</li>
									<li data-target="#room-thumbnail--slide" data-slide-to="4">
										<img src="img/bg-img/52.jpg" class="d-block w-100" alt="">
									</li>
								</ol>
							</div>
						</div>



					</div>

					<!-- Room Service -->



				</div>

				<div class="col-12 col-lg-4">
					<!-- Hotel Reservation Area -->
					<div class="hotel-reservation--area mb-100">
						<form action="/booking.html">
							<div class="form-group mb-30">
								<label for="checkInDate">Date</label>
								<div class="input-daterange" id="datepicker">
									<div class="row no-gutters">
										<div class="col-6">
											<input type="text" class="input-small form-control"
												name="checkInDate" id="checkInDate" placeholder="Check In">
										</div>
										<div class="col-6">
											<input type="text" class="input-small form-control"
												name="checkOutDate" placeholder="Check Out">
										</div>
									</div>
								</div>
							</div>
							<div class="form-group mb-30"></div>

							<div class="form-group mb-50"></div>
							<div class="form-group">
								<button type="submit" class="btn roberto-btn w-100">Book
									Now</button>
							</div>
							<!-- Room Features -->


						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Rooms Area End -->

	<!-- Call To Action Area Start -->
	<section class="roberto-cta-area">
		<div class="container">
			<div class="cta-content bg-img bg-overlay jarallax"
				style="background-image: url(img/bg-img/1.jpg);">
				<div class="row align-items-center">
					<div class="col-12 col-md-7">
						<div class="cta-text mb-50">
							<h2>Contact us now!</h2>
							<h6>Contact (+84) 032 775 431 to book directly or for advice</h6>
						</div>
					</div>
					<div class="col-12 col-md-5 text-right">
						<a href="#" class="btn roberto-btn mb-50">Contact Now</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Call To Action Area End -->

	<!-- Partner Area Start -->
	<div class="partner-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div
						class="partner-logo-content d-flex align-items-center justify-content-between wow fadeInUp"
						data-wow-delay="300ms"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Partner Area End -->

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