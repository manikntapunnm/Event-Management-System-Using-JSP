<%-- 
    Document   : index
    Created on : 27-Jul-2023, 12:22:11 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Event & Workshop |Management System</title>
	<meta charset="UTF-8">
	<meta name="description" content="SolMusic HTML Template">
	<meta name="keywords" content="music, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon" />

	<!-- Google font -->
	<link
		href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
		rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/owl.carousel.min.css" />
	<link rel="stylesheet" href="css/slicknav.min.css" />

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css" />


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section clearfix">
		<a href="index.jsp" class="site-logo">
			<h4 style="color:rgb(247, 35, 98);">COLLEGE <br><span style="color: white;"> PORTAL</span> </h4>
			<!-- <img src="img/logo.png" alt=""> -->
		</a>
		<div class="header-right">
			<!--<a href="#" class="hr-btn">Help</a>
			<span>|</span>-->
			<!--<div class="user-panel">
				<a href="student-login.jsp" class="login">User</a>
			</div>-->
		</div>
		<ul class="main-menu">
			<li><a href="index.jsp">Home</a></li>
                       
			<li><a href="About-us.jsp">About</a></li>
                        
			<li><a href="admin.jsp">Admin</a></li>
			<li><a href="event-mag.jsp">Event Manager</a></li>
			<li><a href="student-login.jsp" class="login">Student</a></li>
			<li><a href="contact.jsp" class="contact">Contact</a></li>
			<!--<ul class="sub-menu">
					<li><a href="category.jsp">Musical Nights</a></li>
					<li><a href="playlist.jsp">Soft Skills</a></li>
					<li><a href="artist.jsp">Seminar on Python</a></li>
					<li><a href="blog.jsp">Live Stream</a></li>
				</ul>-->

			<!--<li><a href="blog.jsp">News</a></li>-->
			<!--<li><a href="contact.jsp">Contact</a></li>-->

		</ul>
	</header>
	<!-- Header section end -->
	<!--Hero section strat-->
        
        
        
        
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hs-text">
								<h2><span>Event</span> Management.</h2>
								<p>Event Management is a course which deals with the planning, coordinating, and
									organising of events for people and communities. It is a part of the mass
									communication course which is offered by many prestigious colleges in India. </p>

								<a href="About-us.jsp" class="site-btn">Read more</a>
								<!--<a href="#" class="site-btn sb-c2">Start free trial</a>-->
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hr-img">
								<img src="img/event.jpeg" alt="" width="500" height="400">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="hs-item">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hs-text">
								<h2><span>Workshops</span> in College.</h2>
								<p>A workshop, in general, is a gathering in which a group of people with interests,
									expertise, or professions in a particular field, that are actively involved in
									intensive discussion and research on a specific topic or project. </p>
								<a href="About-us.jsp" class="site-btn">Read more</a>
								<!--<a href="#" class="site-btn sb-c2">Start free trial</a>-->
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hr-img">
								<img src="img/semi.jpg" alt="" width="500" height="400">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero section end -->

	<!-- Intro section -->
	<!--<section class="intro-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title">
						<h2>Unlimited Access to 100K tracks</h2>
					</div>
				</div>
				<div class="col-lg-6">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.</p>
					<a href="#" class="site-btn">Try it now</a>
				</div>
			</div>
		</div>
	</section>-->
	<!--Intro section end-->

	<!--How section-->
	<!--	<section class="how-section spad set-bg" data-setbg="img/how-to-bg.jpg">
		<div class="container text-white">
			<div class="section-title">
				<h2>How it works</h2>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="how-item">
						<div class="hi-icon">
							<img src="img/icons/brain.png" alt="">
						</div>
						<h4>Create an account</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipi-scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. </p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="how-item">
						<div class="hi-icon">
							<img src="img/icons/pointer.png" alt="">
						</div>
						<h4>Choose a plan</h4>
						<p>Donec in sodales dui, a blandit nunc. Pellen-tesque id eros venenatis, sollicitudin neque sodales, vehicula nibh. Nam massa odio, portti-tor vitae efficitur non. </p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="how-item">
						<div class="hi-icon">
							<img src="img/icons/smartphone.png" alt="">
						</div>
						<h4>Download Music</h4>
						<p>Ablandit nunc. Pellentesque id eros venenatis, sollicitudin neque sodales, vehicula nibh. Nam massa odio, porttitor vitae efficitur non, ultric-ies volutpat tellus. </p>
					</div>
				</div>
			</div>
		</div>
	</section>-->
	<!-- How section end -->

	<!-- Concept section -->
	<section class="concept-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title">
						<h2>Our Upcoming Events & Workshops</h2>
					</div>
				</div>
				<div class="col-lg-6">
					<p>Event means an event or program, on or off-campus, organized on behalf of the University, or an
						event or program which a reasonable person would identify as being affiliated with the
						University.</p>
					<p> workshop is a room or building where work is performed, or a seminar or group of meetings and
						discussions in a particular field. </p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="img/m1.jpg" alt="" height="300px" width="300px">
						
							<h5>Musical Night</h5>
						
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="img/s.jpg" alt="" height="300px" width="300px">
						
							<h5>Soft Skills</h5>
						
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="img/sem1.webp" alt="" height="300px" width="300px">
						
							<h5>Seminor on Python</h5>
						
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="img/wave-thumb.jpg" alt="" height="300px" width="300px">
						
							<h5>Live Streems</h5>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Concept section end -->

	<!-- Subscription section -->
	<!--<section class="subscription-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="sub-text">
						<h2>Subscription from $15/month</h2>
						<h3>Start a free trial now</h3>
						<p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						<a href="#" class="site-btn">Try it now</a>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="sub-list">
						<li><img src="img/icons/check-icon.png" alt="">Play any track</li>
						<li><img src="img/icons/check-icon.png" alt="">Listen offline</li>
						<li><img src="img/icons/check-icon.png" alt="">No ad interruptions</li>
						<li><img src="img/icons/check-icon.png" alt="">Unlimited skips</li>
						<li><img src="img/icons/check-icon.png" alt="">High quality audio</li>
						<li><img src="img/icons/check-icon.png" alt="">Shuffle play</li>
					</ul>
				</div>
			</div>
		</div>
	</section>-->
	<!-- Subscription section end -->

	<!-- Premium section end -->
	<!--<section class="premium-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title">
						<h2>Why go Premium</h2>
					</div>
				</div>
				<div class="col-lg-6">
					<p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="premium-item">
						<img src="img/premium/1.jpg" alt="">
						<h4>No ad interruptions </h4>
						<p>Consectetur adipiscing elit</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="premium-item">
						<img src="img/premium/2.jpg" alt="">
						<h4>High Quality</h4>
						<p>Ectetur adipiscing elit</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="premium-item">
						<img src="img/premium/3.jpg" alt="">
						<h4>Listen Offline</h4>
						<p>Sed do eiusmod tempor </p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="premium-item">
						<img src="img/premium/4.jpg" alt="">
						<h4>Download Music</h4>
						<p>Adipiscing elit</p>
					</div>
				</div>
			</div>
		</div>
	</section>-->
	<!-- Premium section end -->

	<!-- Footer section -->
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-7 order-lg-2">
					<div class="row">
						<div class="col-sm-6">
							<div class="footer-widget">
								<h2>About us</h2>
								<ul>
									<li><a href="">Events</a></li>
									<li><a href="">Workshops</a></li>
									<!--<li><a href="">History</a></li>-->
								</ul>
							</div>
						</div>
						<!--<div class="col-sm-4">
							<div class="footer-widget">
								<h2>Products</h2>
								<ul>
									<li><a href="">Music</a></li>
									<li><a href="">Subscription</a></li>
									<li><a href="">Custom Music</a></li>
									<li><a href="">Footage</a></li>
								</ul>
							</div>
						</div>-->
						<div class="col-sm-6">
							<div class="footer-widget">
								<h2>Events</h2>
								<ul>
									<li><a href="">Musical Night</a></li>
									<li><a href="">Soft Skills</a></li>
									<li><a href="">Seminar on Python</a></li>
									<li><a href="">Live Stream</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-lg-5 order-lg-1">
					<h4 style="color:rgb(247, 35, 98);">COLLEGE<h4 style="color: white;"> PORTAL</h4>
					</h4>
					<!--<img src="img/logo.png" alt="">-->
					<div class="copyright">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script> All rights reserved | This template
						is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://codebook.in/"
							 >Codebook.in</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
					<div class="social-links">
						<a href=""><i class="fa fa-instagram"></i></a>
						<a href=""><i class="fa fa-pinterest"></i></a>
						<a href=""><i class="fa fa-facebook"></i></a>
						<a href=""><i class="fa fa-twitter"></i></a>
						<a href=""><i class="fa fa-youtube"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer section end -->

	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>