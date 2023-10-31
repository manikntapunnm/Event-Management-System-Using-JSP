<%-- 
    Document   : mus-night
    Created on : 27-Jul-2023, 12:20:11 pm
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

        <style>
            /* Custom CSS to style odd-numbered rows */
            .table-striped-custom tbody tr:nth-child(odd) {
                background-color: #e6fff2; /* Dark green */
                color: #000; /* Text color for better readability on dark background */
            }
            .form-group td {
                padding: 8px 15px; /* Adjust the values as needed for spacing */
            }
            .form-group td label {
                font-weight: bold; /* Make the label text bold */
            }

            /* Custom CSS to decrease the width of the form */
            .col-lg-6 {
                max-width: 600px; /* Decrease the width as needed */
            }
        </style>

    </head>
    <body>
        
        
    <%
    String loginSuccessMessage = (String) request.getSession().getAttribute("loginSuccessMessage");
  
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
%>
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
                <li><a href="student-dashboard.jsp">Home</a></li>
                <li><a href="userlogin.jsp">View Events</a></li>
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
        </header>
    <body>
        <!-- Header section end -->
        <br><br>
        <!--login strat-->
        <!-- Login form creation starts-->
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <!--musical night table-->
      

        <%
      Connection con = null;
PreparedStatement statement = null;
ResultSet rs = null;

        String title = "musical nights"; // Corrected the assignment

try {
    String url = "jdbc:mysql://localhost:3306/onlineevent";
    String username = "root";
    String dbpassword = "Durga@123";
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(url, username, dbpassword);

    // Use a parameterized query to avoid SQL injection and provide the dynamic title value
    String sql = "SELECT * FROM events WHERE title=?";
    statement = con.prepareStatement(sql);
    statement.setString(1, title);

    rs = statement.executeQuery();

    if (rs.next()) {
        // Get the image data as a byte array
        Blob imageBlob = rs.getBlob("image");
        byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());

        // Convert the byte array to a Base64-encoded string
        String base64Image = Base64.getEncoder().encodeToString(imageBytes);

        // Rest of your code to process other event details
        // ...
%>

        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <img src="data:image/jpeg;base64, <%= base64Image %>" alt="" width="500" height="300">
                </div>
                <div class="col-lg-6">
                    <form action="mus-night-action.jsp?title=<%=rs.getString(2)%>" method="post">
                        <table class="table table-striped table-success table-striped-custom">
                            <tbody>
                                <tr class="form-group">
                                    <td><label for="event">Event:</label></td>
                                    <td><input type="text" id="event" name="title" class="form-control" value="<%= rs.getString(2) %>"readonly></td>
                                </tr>
                                <tr class="form-group">
                                    <td><label for="date">Date:</label></td>
                                    <td><input type="text" id="date" name="date" class="form-control" value="<%= rs.getString(6) %>" readonly></td>
                                </tr>
                                <tr class="form-group">
                                    <td><label for="status">Status:</label></td>
                                    <td><input type="text" id="status" name="status" class="form-control" value="<%= rs.getString(3) %>" readonly></td>
                                </tr>
                                <tr class="form-group">
                                    <td><label for="minGuests">Minimum Guests Allowed:</label></td>
                                    <td><input type="number" id="minGuests" name="minGuests" class="form-control" value="<%= rs.getString(4) %>" readonly></td>
                                </tr>
                                <tr class="form-group">
                                    <td><label for="maxGuests">Maximum Guests Allowed:</label></td>
                                    <td><input type="number" id="maxGuests" name="maxGuests" class="form-control" value="<%= rs.getString(5) %>" readonly></td>
                                </tr>
                                <tr class="form-group">
                                    <td><label for="cost">Cost:</label></td>
                                    <td><input type="text" id="cost" name="cost" class="form-control" value="<%= rs.getString(7) %>" readonly></td>
                                </tr>
                                <tr class="form-group">
                                    <td><label for="description">Description:</label></td>
                                    <td>
                                        <textarea id="description" name="description" rows="4" cols="50" class="form-control" readonly><%= rs.getString(8) %></textarea>
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                            <input type="submit" value="Enroll Now" class="btn btn-success">
                        </div>
                    </form>
                </div>
            </div>
        </div>

<%
    } else {
        out.println("Event with title '" + title + "' not found.");
    }
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
       



        <br><br>
        <!--musical night end-->
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