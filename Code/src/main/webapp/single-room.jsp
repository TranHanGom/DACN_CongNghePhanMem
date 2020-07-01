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

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- /Preloader -->

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
                                    <li class="active"><a href="./index.html">Home</a></li>
                                    <li><a href="./room.html">Rooms</a></li>
                                    <li><a href="./about.html">About Us</a></li>
                                    
                                    <li><a href="./blog.html">News</a></li>
                                    <li><a href="./contact.html">Contact</a></li>
                                </ul>

                                <!-- Search -->
                                <div class="search-btn ml-4">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div>

                                <!-- Book Now -->
                                <div class="book-now-btn ml-3 ml-lg-5">
                                    <a href="#">Login<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/16.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-end">
                <div class="col-12">
                    <div class="breadcrumb-content d-flex align-items-center justify-content-between pb-5">
                        <h2 class="room-title">Room View Sea</h2>
                        <h2 class="room-price">$180 <span>/ Per Night</span></h2>
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
                            <div id="room-thumbnail--slide" class="carousel slide" data-ride="carousel">
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
                                    <li data-target="#room-thumbnail--slide" data-slide-to="0" class="active">
                                        <img src="img/bg-img/48.jpg" class="d-block w-100" alt="">
                                    </li>
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
                        <form action="/booking.html" >
                            <div class="form-group mb-30">
                                <label for="checkInDate">Date</label>
                                <div class="input-daterange" id="datepicker">
                                    <div class="row no-gutters">
                                        <div class="col-6">
                                            <input type="text" class="input-small form-control" name="checkInDate" id="checkInDate" placeholder="Check In">
                                        </div>
                                        <div class="col-6">
                                            <input type="text" class="input-small form-control" name="checkOutDate" placeholder="Check Out">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-30">
                               
                            </div>
   
                            <div class="form-group mb-50">
                                
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn roberto-btn w-100">Book Now</button>
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
        <div class="cta-content bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/1.jpg);">
            <div class="row align-items-center">
                <div class="col-12 col-md-7">
                    <div class="cta-text mb-50">
                        <h2>Contact us now!</h2>
                        <h6>Contact (+84) 032 775 431  to book directly or for advice</h6>
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
                <div class="partner-logo-content d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="300ms">
                    
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Partner Area End -->

<!-- Footer Area Start -->
<footer class="footer-area section-padding-80-0">
    <!-- Main Footer Area -->
    <div class="main-footer-area">
        <div class="container">
            <div class="row align-items-baseline justify-content-between">
                <!-- Single Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Footer Logo -->
                        <a href="#" class="footer-logo"><img src="img/core-img/logof.png" alt=""></a>

                        <h4>(+84) 032 775 4318</h4>
                        <span>joyhan283@gmail.com</span>
                        <span>235 Nguyen Cu Trinh, District 1, HCM City, Viet Nam</span>
                    </div>
                </div>

               
                <!-- Single Footer Widget Area -->
                <div class="col-12 col-sm-4 col-lg-2">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h5 class="widget-title">Links</h5>

                        <!-- Footer Nav -->
                        <ul class="footer-nav">
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> About Us</a></li>
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> Our Room</a></li>
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> News</a></li>
                            <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> Contact</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Single Footer Widget Area -->
                <div class="col-12 col-sm-8 col-lg-4">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h5 class="widget-title">Subscribe Newsletter</h5>
                        <span>Subscribe our newsletter gor get notification about new updates.</span>

                        <!-- Newsletter Form -->
                        <form action="index.html" class="nl-form">
                            <input type="email" class="form-control" placeholder="Enter your email...">
                            <button type="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

   
</footer>
<!-- Footer Area End -->

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