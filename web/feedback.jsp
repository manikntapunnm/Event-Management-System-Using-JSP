<%-- 
    Document   : feedback
    Created on : 27-Jul-2023, 12:19:01 pm
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

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

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


</head>

<body>
    
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
				background-color: #cccccc;
			}
		</style>
	</header>

	<body>
		<!-- Header section end -->
		<br><br>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
			integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous"></script>
		<!--feedback start-->
<div class="container d-flex align-items-center justify-content-center">
    <div class="row">
        <div class="col">

            <h3 align="center">Feedback</h3><br>
            <p>You can write anything here about the event and workshop</p>
            <br><br>
            <form action="feedback-action.jsp" method="post">
                <div class="form-row">
                    <div class="form-group col">
                        <label for="inputState">Which Event did you attend?</label>
                        <select id="inputState" class="form-control" name="event">
                            <option>Musical Nights</option>
                            <option>Soft Skills</option>
                            <option>Seminar on Python</option>
                            <option>Live Stream</option>
                        </select>
                    </div>
                </div>
                <br>
                <p>Overall, how entertaining was the event?</p>
                <div class="row mt-4">
                    <div class="col-md-12" id="entertainmentRating" name="entertainmentRating">
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateEvent(1)"></i>
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateEvent(2)"></i>
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateEvent(3)"></i>
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateEvent(4)"></i>
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateEvent(5)"></i>
                    </div>
                </div>
                <input type="hidden" id="entertainmentRatingValue" name="entertainmentRating" value="0">
                <br>
                <p>After the Workshop, how inspired did you feel?</p>
                <div class="row mt-4">
                    <div class="col-md-12" id="inspirationRating" name="inspirationRating">
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateInspiration(1)"></i>
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateInspiration(2)"></i>
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateInspiration(3)"></i>
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateInspiration(4)"></i>
                        <i class="fa fa-star fa-2x text-secondary" onclick="rateInspiration(5)"></i>
                    </div>
                </div>
                <input type="hidden" id="inspirationRatingValue" name="inspirationRating" value="0">
                <br>
                <div class="mb-3 mt-3">
                    <label for="comment">Describe Feedback:</label>
                    <textarea class="form-control" rows="5" id="comment" name="text"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>

<script>
    function rateEvent(rating) {
        const ratingContainer = document.getElementById('entertainmentRating');
        const ratingValueInput = document.getElementById('entertainmentRatingValue');
        ratingValueInput.value = rating;
        for (let i = 1; i <= 5; i++) {
            const starIcon = ratingContainer.children[i - 1];
            starIcon.classList.toggle('text-warning', i <= rating);
        }
    }

    function rateInspiration(rating) {
        const ratingContainer = document.getElementById('inspirationRating');
        const ratingValueInput = document.getElementById('inspirationRatingValue');
        ratingValueInput.value = rating;
        for (let i = 1; i <= 5; i++) {
            const starIcon = ratingContainer.children[i - 1];
            starIcon.classList.toggle('text-warning', i <= rating);
        }
    }
</script>


		



		<br><br>

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