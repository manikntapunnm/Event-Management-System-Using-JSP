
<%-- 
    Document   : student-login
    Created on : 27-Jul-2023, 12:26:52 pm
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



    </head>
    <body>
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
                <h4 style="color:rgb(247, 35, 98);">COLLEGE<h4 style="color: white;"> PORTAL</h4> </h4>

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

                </li>
                <li><a href="event-mag.jsp">Event Manager</a></li>
                <li><a href="student-login.jsp" class="login">Student</a></li>
                <li><a href="contact.jsp" class="contact">Contact</a></li>	

            </ul>
        </header>
    <body>
        <!-- Header section end -->
        <br><br><br><br>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <section class="pb-5">
            <div class="container-fluid h-custom">
                <div class="row d-flex justify-content-center align-items-center">
                    <div class="col-md-9 col-lg-6 col-xl-5">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                             class="img-fluid" alt="Sample image">
                    </div>
                    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                        <form action="student-login-action.jsp" method ="post">
                            <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
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

                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <input type="email" id="form3Example3" class="form-control form-control-lg"
                                       placeholder="Enter a valid email address" name="email"/>
                                <label class="form-label" for="form3Example3">Email address</label>
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-3">
                                <input type="password" id="form3Example4" class="form-control form-control-lg"
                                       placeholder="Enter password" name="password" />
                                <label class="form-label" for="form3Example4">Password</label>
                            </div>

                            <div class="d-flex justify-content-between align-items-center">
                                <!-- Checkbox -->
                                <div class="form-check mb-0">
                                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                                    <label class="form-check-label" for="form2Example3">
                                        Remember me
                                    </label>
                                </div>
                                <a href="forgot-password_1.jsp?source=student" class="text-body">Forgot password?</a>
                            </div>

                            <div class="text-center text-lg-start mt-4 pt-2">
                                <button type="submit" class="btn btn-primary btn-lg"
                                        style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
                                <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="register.jsp"
                                                                                                  class="link-danger">Register</a></p>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

        </section>








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

