<%@page import="Controller.Database"%>
<%@page import="Model.Room"%>
<%@page import="java.util.ArrayList"%>
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
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcrumb-content text-center">
						<h2 class="page-title">Our Room</h2>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb justify-content-center">
								<li class="breadcrumb-item"><a href="index.html">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Room</li>
							</ol>
						</nav>
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

					<%
						ArrayList<Room> list = Database.getRoom();
					%>
					<%
						for (int i = 0; i < list.size(); i++) {
					%>
					<!-- Single Room Area -->
					<div
						class="single-room-area d-flex align-items-center mb-50 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Room Thumbnail -->
						<div class="room-thumbnail">
							<img src="img/bg-img/44.jpg" alt="">
						</div>
						<!-- Room Content -->
						<div class="room-content">
							<h2><%=list.get(i).getRoom_name()%></h2>
							<h4>
								400$ <span>/ Day</span>
							</h4>
							<div class="room-feature">
								<h6>
									Size: <span> 
									</span>
								</h6>

								<h6>
									Bed: <span>King beds</span>
								</h6>
							</div>
							<form name="submitForm" method="POST"
								action="<%=request.getContextPath()%>/DetailsRoom?id=<%=i%>">
								<div>
									<input type="submit" value="View Details"
										class="btn view-detail-btn" /> <i
										class="fa fa-long-arrow-right" aria-hidden="true"></i>
								</div>
								<a href="./booking.jsp">BOOK</a>
							</form>
						</div>
					</div>
					<%
						}
					%>


					<!-- Pagination -->
					<nav class="roberto-pagination wow fadeInUp mb-100"
						data-wow-delay="1000ms">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next
									<i class="fa fa-angle-right"></i>
							</a></li>
						</ul>
					</nav>
				</div>

				<div class="col-12 col-lg-4">
					<!-- Hotel Reservation Area -->
					<div class="hotel-reservation--area mb-100">
						<form action="#" method="post">
							<div class="form-group mb-30">
								<label for="checkInDate">Date</label>
								<div class="input-daterange" id="datepicker">
									<div class="row no-gutters">
										<div class="col-6">
											<input type="text" class="input-small form-control"
												id="checkInDate" name="checkInDate" placeholder="Check In">
										</div>
										<div class="col-6">
											<input type="text" class="input-small form-control"
												name="checkOutDate" placeholder="Check Out">
										</div>
									</div>
								</div>
							</div>
							<div class="form-group mb-30">
								<label for="type">Room Type</label>
								<div class="row">
									<div class="col-6">
										<select name="sing" id="type" class="form-control">
											<option value="sing">Single Room</option>
											<option value="01">Double Room</option>
											<option value="02">Twin Room</option>
											<option value="03">Family Room</option>
										</select>
									</div>

								</div>
							</div>
							<div class="form-group mb-50">
								<div class="slider-range">
									<div class="range-price">Max Price: $0 - $3000</div>
									<div data-min="0" data-max="3000" data-unit="$"
										class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
										data-value-min="0" data-value-max="3000"
										data-label-result="Max Price: ">
										<div class="ui-slider-range ui-widget-header ui-corner-all"></div>
										<span class="ui-slider-handle ui-state-default ui-corner-all"
											tabindex="0"></span> <span
											class="ui-slider-handle ui-state-default ui-corner-all"
											tabindex="0"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<button type="submit" class="btn roberto-btn w-100">Check
									Available</button>
							</div>
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