<%-- 
    Document   : admin
    Created on : 27-Jul-2023, 12:16:31 pm
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
	<link href="img/favicon.ico" rel="shortcut icon" />
	<link rel="stylesheet" href="about.css">

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
			<h4 style="color:rgb(247, 35, 98);">COLLEGE<h4 style="color: white;"> PORTAL</h4>
			</h4>
			<!--<img src="img/logo.png" alt="">-->
		</a>
		<div class="header-right">
			<!--<a href="#" class="hr-btn">Help</a>
			<span>|</span>-->
			<!--<div class="user-panel">
				<a href="login.jsp" class="register">User</a>
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
		<br><br><br><br>
		<!--login strat-->
		<!-- Login form creation starts-->
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
			integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous"></script>
		<section class="pb-5">
			<div class="container-fluid h-custom">
				<div class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-md-9 col-lg-6 col-xl-5">
						<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
							class="img-fluid" alt="Sample image">
					</div>
					<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
						
                                            


                                            
                                            <form action="admin-login-action.jsp" method="post">  
                                                
                                                
                                                
                                                <div
                                                    class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                                                    <p class="lead fw-normal mb-0 me-3">Sign in with</p>
                                                    <button type="button" class="btn btn-primary btn-floating mx-1">
                                                        <i class="fa fa-facebook-f"></i>
                                                    </button>

                                                    <button type="button" class="btn btn-primary btn-floating mx-1">
                                                        <i class="fa fa-twitter"></i>
                                                    </button>

                                                    <button type="button" class="btn btn-primary btn-floating mx-1">
                                                        <i class="fa fa-linkedin"></i>
                                                    </button>
                                                </div>

                                                <div class="divider d-flex align-items-center my-4">
                                                    <p class="text-center fw-bold mx-3 mb-0">Or</p>
                                                </div>

                                         
                                                <div class="form-outline mb-4">
                                                    <input type="text" id="form3Example3" class="form-control form-control-lg"
                                                           placeholder="Enter a valid email address"  name="username"/>
                                                    <label class="form-label" for="form3Example3">Email address</label>
                                                </div>

                                                
                                                <div class="form-outline mb-3">
                                                    <input type="password" id="form3Example4" class="form-control form-control-lg"
                                                           placeholder="Enter password" name="password" />
                                                    <label class="form-label" for="form3Example4">Password</label>
                                                </div>

                                                <div class="d-flex justify-content-between align-items-center">
                                                    
                                                    <div class="form-check mb-0">
                                                        <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                                                        <label class="form-check-label" for="form2Example3">
                                                            Remember me
                                                        </label>
                                                    </div>
                                                    <a href="#!" class="text-body">Forgot password?</a>
                                                </div>

                                             <div class="text-center text-lg-start mt-4 pt-2">
        <button type="submit" class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
    </div>
    
    <!-- Add a new element to display the success message -->
    <div id="success-message" class="alert alert-success d-none mt-3 text-center" role="alert">
        Login Successful! Redirecting to the Dashboard...
    </div>
                                            
                                            
                                            </form>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
					</div>
				</div>
			</div>
			<!--<div
		  class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">-->
			<!-- Copyright -->
			<!--<div class="text-white mb-3 mb-md-0">
			Copyright © 2020. All rights reserved.
		  </div>-->
			<!-- Copyright -->

			<!-- Right -->
			<!--<div>
			<a href="#!" class="text-white me-4">
			  <i class="fa fa-facebook-f"></i>
			</a>
			<a href="#!" class="text-white me-4">
			  <i class="fa fa-twitter"></i>
			</a>
			<a href="#!" class="text-white me-4">
			  <i class="fab fa-google"></i>
			</a>
			<a href="#!" class="text-white">
			  <i class="fab fa-linkedin-in"></i>
			</a>
		  </div>-->
			<!-- Right -->
			<!--</div>-->
		</section>






		<!--<section class="container-fluid">
    row and justify-content-center class is used to place the form in center 
    <section class="row justify-content-center">
      <section class="col-12 col-sm-6 col-md-4">
        <form class="form-container">
        <div class="form-group">
          <h4 class="text-center font-weight-bold"> Sign In </h4>
          <label for="InputEmail1">Email Address</label>
           <input type="email" class="form-control" id="InputEmail1" aria-describeby="emailHelp" placeholder="Enter email">
        </div>
        <div class="form-group">
          <label for="InputPassword1">Password</label>
          <input type="password" class="form-control" id="InputPassword1" placeholder="Password">
        </div>
        <button type="submit " class="btn btn-primary btn-block " class="text-grey"><a href="" >Submit</a></button>-->
		<!-- <a href="std-login.jsp"><button type="submit" class="btn btn-primary btn-block">Submit</button></a> -->
		<!--<div class="form-footer">
          
          <br>  <p> Don't have an account? <a href="signup.jsp">Sign Up</a></p>
          
        </div>
        </form>
      </section>
    </section>
  </section>
  <br><br><br><br>-->
		<!-- Login form creation ends -->
		<!--login end-->


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
										<li><a href="">Musical Nights</a></li>
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
							<script>document.write(new Date().getFullYear());</script> All rights reserved | This
							template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://codebook.in/"  >Codebook.in</a>
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