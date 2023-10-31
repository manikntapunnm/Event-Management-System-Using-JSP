<%-- 
    Document   : student-dashboard
    Created on : 27-Jul-2023, 12:27:18 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%@ page import="java.sql.*" %>

<%@ page import="java.io.*" %>
<%@ page import="java.util.Base64" %>
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
           <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

    <%-- Check if the success message session attribute exists and display the Sweet Alert --%>
<%
    String loginSuccessMessage = (String) request.getSession().getAttribute("loginSuccessMessage");
    String loginPendingMessage = (String) request.getSession().getAttribute("loginPendingMessage");
    String loginFailedMessage = (String) request.getSession().getAttribute("loginFailedMessage");

    if (loginSuccessMessage != null && !loginSuccessMessage.isEmpty()) {
        out.println("<script>");
        out.println("Swal.fire({");
        out.println("  icon: 'success',");
        out.println("  title: 'Success',");
        out.println("  text: '" + loginSuccessMessage + "',");
        out.println("});");
        out.println("</script>");
        // Remove the session attribute to prevent displaying the message again on subsequent requests
        request.getSession().removeAttribute("loginSuccessMessage");
    }

    if (loginPendingMessage != null && !loginPendingMessage.isEmpty()) {
        out.println("<script>");
        out.println("Swal.fire({");
        out.println("  icon: 'info',");
        out.println("  title: 'Pending',");
        out.println("  text: '" + loginPendingMessage + "',");
        out.println("});");
        out.println("</script>");
        // Remove the session attribute to prevent displaying the message again on subsequent requests
        request.getSession().removeAttribute("loginPendingMessage");
    }

    if (loginFailedMessage != null && !loginFailedMessage.isEmpty()) {
        out.println("<script>");
        out.println("Swal.fire({");
        out.println("  icon: 'error',");
        out.println("  title: 'Failed',");
        out.println("  text: '" + loginFailedMessage + "',");
        out.println("});");
        out.println("</script>");
        // Remove the session attribute to prevent displaying the message again on subsequent requests
        request.getSession().removeAttribute("loginFailedMessage");
    }
%>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section clearfix">
		<a href="index.jsp" class="site-logo">
			<h4 style="color:rgb(247, 35, 98);">COLLEGE <h4 style="color: white;"> PORTAL</h4>
			</h4>
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
    <li><a href="student-dashboard.jsp">View Events</a></li>
    <li><a href="feedback.jsp">FeedBack</a></li>
    <li><a href="myprofile.jsp">My Profile</a></li>
    <li><a href="index.jsp">Log Out</a>
        <!-- Dropdown menu -->
        <ul class="sub-menu">
            <li>
                <p><%= session.getAttribute("firstname") %>'s Dashboard</p>
                <p><%= session.getAttribute("email") %></p>
                <p><%= session.getAttribute("phone") %></p>
                <p><%= session.getAttribute("college") %></p>
                 <p><%--= session.getAttribute("eventTitle") --%></p>
                
            </li>
        </ul>
    </li>
</ul>
	</header>

	<body>
		<!-- Header section end -->
		<br>
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
       
                        
                     
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Dashboard</title>
</head>
<body>
    <%
        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        try {
            String url = "jdbc:mysql://localhost:3306/onlineevent";
            String username = "root";
            String dbpassword = "Durga@123";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, username, dbpassword);

            // Use a simple statement to fetch all events
            String sql = "SELECT * FROM events";
            statement = con.createStatement();
            rs = statement.executeQuery(sql);

    %>
    <section class="concept-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title">
                        <h2>Our Events</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                
                <% 
                    // Loop through all events and display their details
                    while (rs.next()) {
                        String eventTitle = rs.getString("title");
                        Blob imageBlob = rs.getBlob("image");
                        byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
                        String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                           String dashboardURL = ""; // Set the dashboard URL for each event

        // Determine the dashboard URL based on the event title
        if ("Musical Nights".equals(eventTitle)) {
            dashboardURL = "mus-night.jsp";
        } else if ("Soft Skills".equals(eventTitle)) {
            dashboardURL = "soft-skills.jsp";
        } else if ("LiveStream".equals(eventTitle)) {
            dashboardURL = "livestream.jsp";
        } else if ("Seminar on Python".equals(eventTitle)) {
            dashboardURL = "seminar-py.jsp";
        }
                %>
                <div class="col-lg-3 col-sm-6">
                    <div class="concept-item">
                        <img src="data:image/jpeg;base64, <%= base64Image %>" alt="" width="250px" height="250px">
                        <a href="<%= dashboardURL %>?title=<%= eventTitle %>">
                            <h5><%= eventTitle %></h5>
                        </a>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </section>
    <%  
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            out.println("An error occurred: " + e.getMessage());
        } finally {
            // Close the resources in the reverse order of their creation
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (statement != null) {
                try {
                    statement.close();
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
</body>
</html>
   
                        
                        
                        
                        
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
								href="https://codebook.in/"  >Codebook</a>
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