<%-- 
    Document   : myprofile
    Created on : 27-Jul-2023, 12:19:37 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">

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
    
     <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
        <%
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        String url = "jdbc:mysql://localhost:3306/onlineevent";
        String username = "root";
        String dbpassword = "Durga@123";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, username, dbpassword);

        String email = (String) session.getAttribute("email");

        String query = "SELECT * FROM student WHERE email = ?";
        ps = con.prepareStatement(query);
        ps.setString(1, email);
        rs = ps.executeQuery();

        if (rs.next()) {
           String firstname = rs.getString("firstname");
            String lastname = rs.getString("lastname");
           // String email = rs.getString("email");
            String college = rs.getString("college");
            String phone = rs.getString("phone");
            String year = rs.getString("year");
             Blob imageBlob = rs.getBlob("image");
        byte[] imageData = null;
        if (imageBlob != null) {
            imageData = imageBlob.getBytes(1, (int) imageBlob.length());
        }
           
            %>
        
        
    
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section clearfix">
		<a href="index.jsp" class="site-logo">
            <h4 style="color:rgb(247, 35, 98);">COLLEGE <h4 style="color: white;"> PORTAL</h4> </h4>
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
			<li><a href="student-dashboard.jsp">Home</a></li>
			
			<li><a href="student-dashboard.jsp">View Events</a>
				
			</li>
            <li><a href="feedback.jsp">FeedBack</a></li>
            <li><a href="myprofile.jsp">My Profile</a></li>
					<li><a href="student-login.jsp">Log Out</a>
        <!-- Dropdown menu -->
        <ul class="sub-menu">
            <li>
                <p><%= session.getAttribute("firstname") %>'s Dashboard</p>
                <p><%= session.getAttribute("email") %></p>
                <p><%= session.getAttribute("phone") %></p>
                <p><%= session.getAttribute("college") %></p>
            </li>
        </ul>
    </li>
		</ul>
		<style>
			body {
 background-color: #7e9bbd;
}
		</style>
	</header>
    <body>
	<!-- Header section end -->
        
       
                       <%
String updateSuccessMessage = (String) request.getSession().getAttribute("updateSuccessMessage");
    if (updateSuccessMessage != null && !updateSuccessMessage.isEmpty()) {
        out.println("<script>");
        out.println("Swal.fire({");
        out.println("  icon: 'success',");
        out.println("  title: 'Success',");
        out.println("  text: '" + updateSuccessMessage + "',");
        out.println("});");
        out.println("</script>");
        // Remove the session attribute to prevent displaying the message again on subsequent requests
        request.getSession().removeAttribute("updateSuccessMessage");
    }
    %>
     
      
        <div class="container rounded bg-white mt-5 mb-5"> 
    <div class="row">
        <div class="col-md-4 border-right">
            <div class="d-flex flex-column align-items-center text-center p-4 py-4">
                <img style="width: 150px; height: 150px;" class="mt-5" src="data:image/png;base64,<%= (imageData != null) ? Base64.getEncoder().encodeToString(imageData) : "" %>">
            </div> 
        </div>
        <div class="col-md-8 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3"> 
                    <h4 class="text-right">My Profile</h4> 
                </div> 
                <form action="my-profile-action.jsp" method="post">
                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label class="labels">First Name</label>
                            <input type="text" class="form-control" placeholder="first name" value="<%= rs.getString("firstname") %>" name="firstname">
                        </div> 
                        <div class="col-md-6">
                            <label class="labels">Last Name</label>
                            <input type="text" class="form-control" value="<%= rs.getString("lastname") %>" placeholder="surname"name="lastname">
                        </div> 
                    </div> 
                    <div class="row mt-3"> 
                        <div class="col-md-12">
                            <label class="labels">PhoneNumber</label>
                            <input type="text" class="form-control" placeholder="enter phone number" value="<%= rs.getString("phone") %>" name="phone">
                        </div> 
                        <div class="col-md-12">
                            <br><label class="labels">College</label><br>
                            <input type="text" class="form-control" placeholder="enter college" value="<%= rs.getString("college") %>" name="college">
                        </div> 
                        <div class="col-md-12">
                            <br><label class="labels">Email ID</label><br>
                            <input type="text" class="form-control" placeholder="enter email id" value="<%= rs.getString("email") %>"  name="email">
                        </div>
                        <div class="col-md-12">
                            <br><label class="labels">Education</label><br>
                            <input type="text" class="form-control" placeholder="enter education" value="<%= rs.getString("year") %>" name="year">
                        </div>
                        <div class="col-md-12">
                            <br><label class="labels">Password</label><br>
                            <input type="text" class="form-control"  value="<%= rs.getString("password") %>" name="password">
                        </div>
                    </div>
                    <div class="mt-5 text-center">
                        <button class="btn btn-success profile-button" type="submit">Save Profile</button>
                    </div> 
                </form>
            </div> 
        </div> 
    </div>
</div>


                              
            <%
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("An error occurred: " + e.getMessage());
    } finally {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>


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
                    <h4 style="color:rgb(247, 35, 98);">COLLEGE <h4 style="color: white;"> PORTAL</h4> </h4>
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
