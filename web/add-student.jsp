<%-- 
    Document   : add-student
    Created on : 27-Jul-2023, 12:17:35 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">
    <title>College Event & Workshop Management System</title>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />
   
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="assets/css/style.css">
   

</head>
<body class="">
	
	<div class="loader-bg">
		<div class="loader-track">
			<div class="loader-fill"></div>
		</div>
	</div>
	
	<nav class="pcoded-navbar menu-light ">
		<div class="navbar-wrapper  ">
			<div class="navbar-content scroll-div " >
				
				<div class="">
					<div class="main-menu-header">
						<img class="img-radius" src="assets/images/user/avatar-2.jpg" alt="User-Profile-Image">
						<div class="user-details">
							<div id="more-details">Admin<i class="fa fa-caret-down"></i></div>
						</div>
					</div>
					<div class="collapse" id="nav-user-link">
						<ul class="list-unstyled">
							<!--<li class="list-group-item"><a href="user-profile.jsp"><i class="feather icon-user m-r-5"></i>View Profile</a></li>
							<li class="list-group-item"><a href="#!"><i class="feather icon-settings m-r-5"></i>Settings</a></li>-->
							<li class="list-group-item"><a href="index.jsp"><i class="feather icon-log-out m-r-5"></i>Logout</a></li>
						</ul>
					</div>
				</div>
				
				<ul class="nav pcoded-inner-navbar ">
					<li class="nav-item pcoded-menu-caption">
					    <label>Navigation</label>
					</li>
					<li class="nav-item">
					    <a href="admin-dashboard.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Home</span></a>
					</li>
					<li class="nav-item pcoded-hasmenu">
					    <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Event Manager</span></a>
					    <ul class="pcoded-submenu">
					        <li><a href="add-event-manager.jsp"  >Add Event Manager</a></li>
					        <li><a href="manage-event-manager.jsp"  >Manage Event Manager</a></li>
					    </ul>
					</li>
                    <li class="nav-item pcoded-hasmenu">
					    <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Student</span></a>
					    <ul class="pcoded-submenu">
					        <li><a href="add-student.jsp"  >Add Student</a></li>
					        <li><a href="manage-student.jsp"  >Manage Student</a></li>
                            <li><a href="pending-students.jsp"  >Pending Student</a></li>
                            <li><a href="enroll-students.jsp"  >Enroll Student</a></li>
					    </ul>
					</li>
                    <li class="nav-item">
					    <a href="event-feedback.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Event FeedBack</span></a>
					</li>
                    
					
			</div>
		</div>
	</nav>
	
	<header class="navbar pcoded-header navbar-expand-lg navbar-light header-blue">
		
			
				<div class="m-header">
					<a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
					<a href="#!" class="b-brand">
				
                        <h6 style="font-family:Verdana;">COLLEGE PORTAL</h6>
						
						<img src="assets/images/logo-icon.png" alt="" class="logo-thumb">
					</a>
					<a href="#!" class="mob-toggler">
						<i class="feather icon-more-vertical"></i>
					</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item">
							<a href="#!" class="pop-search"><i class="feather icon-search"></i></a>
							<div class="search-bar">
								<input type="text" class="form-control border-0 shadow-none" placeholder="Search hear">
								<button type="button" class="close" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</li>
					</ul>
					
							<div class="dropdown drp-user">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<i class="feather icon-user"></i>
								</a>
								<div class="dropdown-menu dropdown-menu-right profile-notification">
									<div class="pro-head">
										<img src="assets/images/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
										<span>John Doe</span>
										<a href="index.jsp" class="dud-logout" title="Logout">
											<i class="feather icon-log-out"></i>
										</a>
									</div>
									
								</div>
							</div>
						</li>
					</ul>
				</div>
				
			
	</header>
	
<div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                          
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
     
        <div class="row">
            <div class="col-2"></div>
            <div class="col-lg-8 col-md-12">
                <div class="card table-card">
                    <div class="card-header">
                        <h5>Add Student</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body p-5">
                        <div class="table-responsive">
               
               
                  <form action="add-student-action.jsp" method="post" name="myform" enctype="multipart/form-data">
    <div class="mb-1 mt-1">
        <label for="firstname" class="mb-0 pb-0">First Name:</label>
        <input type="text" class="form-control" placeholder="" name="firstname">
    </div>
    <div class="mb-3 mt-3">
        <label for="lastname" class="mb-0 pb-0">Last Name:</label>
        <input type="text" class="form-control" placeholder="" name="lastname">
    </div>
    <div class="mb-3">
        <label for="email" class="mb-0 pb-0">Email:</label>
        <input type="text" class="form-control mb-0 pb-0" placeholder="" name="email">
    </div>
    <div class="mb-3">
        <label for="phone" class="mb-0 pb-0">Phone No:</label>
        <input type="number" class="form-control mb-0 pb-0" placeholder="" name="phone">
    </div>
           
                      
    <div class="mb-3">
        <label for="yr" class="mb-0 pb-0">Year:</label>
        <input type="text" class="form-control mt-0" placeholder="" name="year">
    </div>
   
    <div class="form-group">
        <label for="Upload">Upload Photo</label>
        <input type="file" class="form-control-file" id="exampleFormControlFile1" name="image">
    </div>
    <br>
    <button type="submit" class="btn btn-primary">Add Student</button>
</form>



                </div>
            </div>
            <div class="col-2"></div>
       
  
         
            </div>
            
        </div>
     
    </div>
</div>

    <script src="assets/js/vendor-all.min.js"></script>
    <script src="assets/js/plugins/bootstrap.min.js"></script>
    <script src="assets/js/ripple.js"></script>
    <script src="assets/js/pcoded.min.js"></script>

<!-- Apex Chart -->
<script src="assets/js/plugins/apexcharts.min.js"></script>


<!-- custom-chart js -->
<script src="assets/js/pages/dashboard-main.js"></script>
</body>

</html>
