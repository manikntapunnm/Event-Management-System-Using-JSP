<%-- 
    Document   : register
    Created on : 27-Jul-2023, 12:29:00 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>College Event & Workshop Management System</title>
	<meta charset="UTF-8">
	<meta name="description" content="SolMusic HTML Template">
	<meta name="keywords" content="music, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>
    <link rel="stylesheet" href="about.css">

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
 
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>


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
            <h4 style="color:rgb(247, 35, 98);">COLLEGE<h4 style="color: white;"> PORTAL</h4> </h4>
			<!--<img src="img/logo.png" alt="">-->
		</a>
		<div class="header-right">
			<!--<a href="#" class="hr-btn">Help</a>
			<span>|</span>-->
			<!--<div class="user-panel">
				<a href="student-login.jsp" class="register">User</a>
			</div> -->
		</div>
		<ul class="main-menu">
			<li><a href="index.jsp">Home</a></li>
			<li><a href="About-us.jsp">About</a></li>
			<li><a href="admin.jsp">Admin</a>
				<!--<ul class="sub-menu">
					<li><a href="category.jsp">Musical Nights</a></li>
					<li><a href="playlist.jsp">Soft Skills</a></li>
					<li><a href="artist.jsp">Seminar on Python</a></li>
					<li><a href="blog.jsp">Live Stream</a></li>
				</ul>-->
			</li>
            <li><a href="event-mag.jsp">Event Manager</a></li>
            <li><a href="student-login.jsp" class="login">Student</a></li>
            <li><a href="contact.jsp" class="contact">Contact</a></li>	
			<!--<li><a href="blog.jsp">News</a></li>
			<li><a href="contact.jsp">Contact</a></li>-->
		</ul>
	</header>
    <body>
	<!-- Header section end -->
<br><br>
<section class="pb-5 " style="background-color: white;">
    
    <div class="container ">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-lg-12 col-xl-11">
          <div class="card text-black" style="border-radius: 25px;">
            <div class="card-body p-md-5">
              <div class="row justify-content-center">
                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                     
  
                  <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
                  
                  
                  
                  
                  <form class="mx-1 mx-md-4" action="registeraction.jsp" method="post" enctype="multipart/form-data" >
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fa fa-user fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                        <input type="text" id="form3Example1c" class="form-control" name="firstname"/>
                        <label class="form-label" for="form3Example1c" >First Name</label>
                      </div>
                    </div>
					<div class="d-flex flex-row align-items-center mb-4">
						<i class="fa fa-user fa-lg me-3 fa-fw"></i>
						<div class="form-outline flex-fill mb-0">
						  <input type="text" id="form3Example1c" class="form-control" name="lastname" />
						  <label class="form-label" for="form3Example1c" >Last Name</label>
						</div>
					  </div>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fa fa-envelope fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                        <input type="email" id="form3Example3c" class="form-control" name="email" />
                        <label class="form-label" for="form3Example3c">Your Email</label>
                      </div>
                    </div>
                      
                       <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fa fa-phone fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                        <input type="number" id="form3Example3c" class="form-control" name="phone" />
                        <label class="form-label" for="form3Example3c">Phone</label>
                      </div>
                    </div>
					<div class="d-flex flex-row align-items-center mb-4">
						<i class="fa fa-graduation-cap" style='font-size:24px'></i>
						<div class="form-outline flex-fill mb-0">
						  <input type="text" id="form3Example4c" class="form-control" name="college" />
						  <label class="form-label" for="form3Example4c">College</label>
						</div>
					  </div>
					  <div class="d-flex flex-row align-items-center mb-4">
						<i class="fa fa-graduation-cap" style='font-size:24px'></i>
						<div class="form-outline flex-fill mb-0">
						  <input type="text" id="form3Example4c" class="form-control" name="year" />
                                                   <input type="hidden" id="priority" class="form-control" name="priority" />
                                                    <input type="hidden" id="event" class="form-control" name="event" />
						  <label class="form-label" for="form3Example4c">Year</label>
						</div>
					  </div>
                                           <div class="d-flex flex-row align-items-center mb-4">
						<i class="fa fa-file" style='font-size:24px'></i>
						<div class="form-outline flex-fill mb-0">
						  <input type="file" id="form3Example4c" class="form-control" name="image" />
						  <label class="form-label" for="form3Example4c"> Image</label>
						</div>
					  </div>
  
            
  
                    <div class="form-check d-flex justify-content-center mb-5">
                      <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                      <label class="form-check-label" for="form2Example3">
                        I agree all statements in  <a href="#!">Terms of service</a>
                      </label>
                    </div>
  
                    <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <button type="submit" class="btn btn-primary btn-lg"> Register </button>
                    </div>
					<div class="text-center text-lg-start mt-4 pt-2">
                                            <p class="small fw-bold mt-2 pt-1 mb-0">Already Register?<a href="student-login.jsp" >Go to Login</a></p>
					</div>
                  </form>
  
                </div>
               <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
  
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                    class="img-fluid" alt="Sample image">
  
                </div> 
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <br><br><br><br>

	<!-- Hero section -->
	<!-- <section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hs-text">
								<h2><span>Event</span> Management.</h2>
								<p>Event Management is an art of curating, conceptualizing, organising and planning an event. The events subsume festivals, conferences, ceremonies, formal parties, political rallies, award shows, concerts or conventions etc.</p>
								<a href="#" class="site-btn">Read More</a>
								<a href="#" class="site-btn sb-c2">Start free trial</a>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hr-img">
								<img src="img/wor-eve.jpg" alt="">
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
								<h2><span>Workshops </span> in a College.</h2>
								<p> The objective of workshop is to explore particular technology with interaction with industry experts. Workshops are an innovative and welcomed step towards modern education.  </p>
								<a href="#" class="site-btn">Read more</a>
								<a href="#" class="site-btn sb-c2">Start free trial</a>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hr-img">
								<img src="img/wor.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Hero section end -->

	<!-- Intro section -->
	
	<!-- How section end -->

	<!-- Concept section -->
	<!-- <section class="concept-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title">
						<h2>Our Upcoming Events & Workshops</h2>
					</div>
				</div>
				<div class="col-lg-6">
					<p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="img/concept/2.jpg" alt="">
						<h5>Musical Nights</h5>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="img/concept/1.jpg" alt="">
						<h5>Soft Skills</h5>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="img/concept/3.jpg" alt="">
						<h5>Seminor on Python</h5>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="img/concept/4.jpg" alt="">
						<h5>Live Streems</h5>
					</div>
				</div>
			</div>
		</div>
	</section> -->
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
<br><br><br><br>
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
									<li><a href="">Seminor on Python</a></li>
									<li><a href="">Live Stream</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-lg-5 order-lg-1">
                    <h4 style="color:rgb(247, 35, 98);">COLLEGE<h4 style="color: white;"> PORTAL</h4> </h4>
					<!--<img src="img/logo.png" alt="">-->
					<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://codebook.in/"  >Codebook.in</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
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
