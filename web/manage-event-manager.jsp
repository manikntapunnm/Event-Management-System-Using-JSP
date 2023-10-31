<%-- 
    Document   : manage-event-manager
    Created on : 27-Jul-2023, 12:21:31 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    
    <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Font Awesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">
    <title>College Event & Workshop Management System</title>
    <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 11]>
    	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    	<![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />
    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css">
    
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>-->

</head>
<body class="">
	<!-- [ Pre-loader ] start -->
	<div class="loader-bg">
		<div class="loader-track">
			<div class="loader-fill"></div>
		</div>
	</div>
	<!-- [ Pre-loader ] End -->
	<!-- [ navigation menu ] start -->
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
                    <!--<li class="nav-item">
					    <a href="view-student.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-user"></i></span><span class="pcoded-mtext">View Students</span></a>
					</li>-->
					<!--<li class="nav-item pcoded-menu-caption">
					    <label>UI Element</label>
					</li>
					<li class="nav-item pcoded-hasmenu">
					    <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">Basic</span></a>
					    <ul class="pcoded-submenu">
					        <li><a href="bc_alert.jsp">Alert</a></li>
					        <li><a href="bc_button.jsp">Button</a></li>
					        <li><a href="bc_badges.jsp">Badges</a></li>
					        <li><a href="bc_breadcrumb-pagination.jsp">Breadcrumb & paggination</a></li>
					        <li><a href="bc_card.jsp">Cards</a></li>
					        <li><a href="bc_collapse.jsp">Collapse</a></li>
					        <li><a href="bc_carousel.jsp">Carousel</a></li>
					        <li><a href="bc_grid.jsp">Grid system</a></li>
					        <li><a href="bc_progress.jsp">Progress</a></li>
					        <li><a href="bc_modal.jsp">Modal</a></li>
					        <li><a href="bc_spinner.jsp">Spinner</a></li>
					        <li><a href="bc_tabs.jsp">Tabs & pills</a></li>
					        <li><a href="bc_typography.jsp">Typography</a></li>
					        <li><a href="bc_tooltip-popover.jsp">Tooltip & popovers</a></li>
					        <li><a href="bc_toasts.jsp">Toasts</a></li>
					        <li><a href="bc_extra.jsp">Other</a></li>
					    </ul>
					</li>
					<li class="nav-item pcoded-menu-caption">
					    <label>Forms &amp; table</label>
					</li>
					<li class="nav-item">
					    <a href="form_elements.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">Forms</span></a>
					</li>
					<li class="nav-item">
					    <a href="user-details.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Bootstrap table</span></a>
					</li>
					<li class="nav-item pcoded-menu-caption">
					    <label>Chart & Maps</label>
					</li>
					<li class="nav-item">
					    <a href="chart-apex.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-pie-chart"></i></span><span class="pcoded-mtext">Chart</span></a>
					</li>
					<li class="nav-item">
					    <a href="map-google.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-map"></i></span><span class="pcoded-mtext">Maps</span></a>
					</li>
					<li class="nav-item pcoded-menu-caption">
					    <label>Pages</label>
					</li>
					<li class="nav-item pcoded-hasmenu">
					    <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-lock"></i></span><span class="pcoded-mtext">Authentication</span></a>
					    <ul class="pcoded-submenu">
					        <li><a href="auth-signup.jsp"  >Sign up</a></li>
					        <li><a href="auth-signin.jsp"  >Sign in</a></li>
					    </ul>
					</li>
					<li class="nav-item"><a href="sample-page.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-sidebar"></i></span><span class="pcoded-mtext">Sample page</span></a></li>

				</ul>
				
				<div class="card text-center">
					<div class="card-block">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<i class="feather icon-sunset f-40"></i>
						<h6 class="mt-3">Download Pro</h6>
						<p>Getting more features with pro version</p>
						<a href="https://1.envato.market/qG0m5"   class="btn btn-primary btn-sm text-white m-0">Upgrade Now</a>
					</div>
				</div>-->
				
			</div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->
	<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light header-blue">
		
			
				<div class="m-header">
					<a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
					<a href="#!" class="b-brand">
						<!-- ========   change your logo hear   ============ -->
                        <!-- college portal -->
                        <h6 style="font-family:Verdana;">COLLEGE PORTAL</h6>
						<!-- <img src="assets/images/logo.png" alt="" class="logo"> -->
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
				<!--<ul class="navbar-nav ml-auto">
						<li>
							<div class="dropdown">
								<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="icon feather icon-bell"></i></a>
								<div class="dropdown-menu dropdown-menu-right notification">
									<div class="noti-head">
										<h6 class="d-inline-block m-b-0">Notifications</h6>
										<div class="float-right">
											<a href="#!" class="m-r-10">mark as read</a>
											<a href="#!">clear all</a>
										</div>
									</div>
									<ul class="noti-body">
										<li class="n-title">
											<p class="m-b-0">NEW</p>
										</li>
										<li class="notification">
											<div class="media">
												<img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
												<div class="media-body">
													<p><strong>John Doe</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>5 min</span></p>
													<p>New ticket Added</p>
												</div>
											</div>
										</li>
										<li class="n-title">
											<p class="m-b-0">EARLIER</p>
										</li>
										<li class="notification">
											<div class="media">
												<img class="img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
												<div class="media-body">
													<p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>10 min</span></p>
													<p>Prchace New Theme and make payment</p>
												</div>
											</div>
										</li>
										<li class="notification">
											<div class="media">
												<img class="img-radius" src="assets/images/user/avatar-1.jpg" alt="Generic placeholder image">
												<div class="media-body">
													<p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>12 min</span></p>
													<p>currently login</p>
												</div>
											</div>
										</li>
										<li class="notification">
											<div class="media">
												<img class="img-radius" src="assets/images/user/avatar-2.jpg" alt="Generic placeholder image">
												<div class="media-body">
													<p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>30 min</span></p>
													<p>Prchace New Theme and make payment</p>
												</div>
											</div>
										</li>
									</ul>
									<div class="noti-footer">
										<a href="#!">show all</a>
									</div>
								</div>
							</div>
						</li>
						<li>-->
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
									<!--<ul class="pro-body">
										<li><a href="user-profile.jsp" class="dropdown-item"><i class="feather icon-user"></i> Profile</a></li>
										<li><a href="email_inbox.jsp" class="dropdown-item"><i class="feather icon-mail"></i> My Messages</a></li>
										<li><a href="auth-signin.jsp" class="dropdown-item"><i class="feather icon-lock"></i> Lock Screen</a></li>
									</ul>-->
								</div>
							</div>
						</li>
					</ul>
				</div>
				
			
	</header>
	<!-- [ Header ] end -->
	
	

<!-- [ Main Content ] start -->
<div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                          <!--<h5 class="m-b-10">Dashboard</h5>-->
                        </div>
                        <!--<ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp"><i class="feather icon-home"></i></a></li>
                           <li class="breadcrumb-item"><a href="#!">Dashboard Analytics</a></li>
                        </ul>-->
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-lg-7 col-md-12">
                <!-- support-section start -->
                <!-- <div class="row">
                    <div class="col-sm-6">
                        <div class="card support-bar overflow-hidden">
                            <div class="card-body pb-0">
                                <h2 class="m-0">350</h2>
                                <span class="text-c-blue">Support Requests</span>
                                <p class="mb-3 mt-3">Total number of support requests that come in.</p>
                            </div>
                            <div id="support-chart"></div>
                            <div class="card-footer bg-primary text-white">
                                <div class="row text-center">
                                    <div class="col">
                                        <h4 class="m-0 text-white">10</h4>
                                        <span>Open</span>
                                    </div>
                                    <div class="col">
                                        <h4 class="m-0 text-white">5</h4>
                                        <span>Running</span>
                                    </div>
                                    <div class="col">
                                        <h4 class="m-0 text-white">3</h4>
                                        <span>Solved</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->
                    <!-- <div class="col-sm-6">
                        <div class="card support-bar overflow-hidden">
                            <div class="card-body pb-0">
                                <h2 class="m-0">350</h2>
                                <span class="text-c-green">Support Requests</span>
                                <p class="mb-3 mt-3">Total number of support requests that come in.</p>
                            </div>
                            <div id="support-chart1"></div>
                            <div class="card-footer bg-success text-white">
                                <div class="row text-center">
                                    <div class="col">
                                        <h4 class="m-0 text-white">10</h4>
                                        <span>Open</span>
                                    </div>
                                    <div class="col">
                                        <h4 class="m-0 text-white">5</h4>
                                        <span>Running</span>
                                    </div>
                                    <div class="col">
                                        <h4 class="m-0 text-white">3</h4>
                                        <span>Solved</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- support-section end -->
            </div>
            <!-- page statustic card start -->
            <!-- <div class="col-lg-5 col-md-12">
                
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col-8">
                                        <h4 class="text-c-yellow">$30200</h4>
                                        <h6 class="text-muted m-b-0">All Earnings</h6>
                                    </div>
                                    <div class="col-4 text-right">
                                        <i class="feather icon-bar-chart-2 f-28"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer bg-c-yellow">
                                <div class="row align-items-center">
                                    <div class="col-9">
                                        <p class="text-white m-b-0">% change</p>
                                    </div>
                                    <div class="col-3 text-right">
                                        <i class="feather icon-trending-up text-white f-16"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col-8">
                                        <h4 class="text-c-green">290+</h4>
                                        <h6 class="text-muted m-b-0">Page Views</h6>
                                    </div>
                                    <div class="col-4 text-right">
                                        <i class="feather icon-file-text f-28"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer bg-c-green">
                                <div class="row align-items-center">
                                    <div class="col-9">
                                        <p class="text-white m-b-0">% change</p>
                                    </div>
                                    <div class="col-3 text-right">
                                        <i class="feather icon-trending-up text-white f-16"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col-8">
                                        <h4 class="text-c-red">145</h4>
                                        <h6 class="text-muted m-b-0">Task</h6>
                                    </div>
                                    <div class="col-4 text-right">
                                        <i class="feather icon-calendar f-28"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer bg-c-red">
                                <div class="row align-items-center">
                                    <div class="col-9">
                                        <p class="text-white m-b-0">% change</p>
                                    </div>
                                    <div class="col-3 text-right">
                                        <i class="feather icon-trending-down text-white f-16"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col-8">
                                        <h4 class="text-c-blue">500</h4>
                                        <h6 class="text-muted m-b-0">Downloads</h6>
                                    </div>
                                    <div class="col-4 text-right">
                                        <i class="feather icon-thumbs-down f-28"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer bg-c-blue">
                                <div class="row align-items-center">
                                    <div class="col-9">
                                        <p class="text-white m-b-0">% change</p>
                                    </div>
                                    <div class="col-3 text-right">
                                        <i class="feather icon-trending-down text-white f-16"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div> -->
            <!-- page statustic card end -->
            <!-- prject ,team member start -->
            <div class="col-xl-12  col-md-12">
                <div class="card table-card">
                    <div class="card-header">
                        <h5>Manage Event Manager</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    <!--<li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>-->
                                </ul>
                            </div>
                        </div>
                        <!--<table class="table">
                            <thead>
                              <tr>
                                <th scope="col">#</th>
                                <th scope="col">First</th>
                                <th scope="col">Last</th>
                                <th scope="col">Handle</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                              </tr>
                              <tr>
                                <th scope="row">2</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>@fat</td>
                              </tr>
                              <tr>
                                <th scope="row">3</th>
                                <td colspan="2">Larry the Bird</td>
                                <td>@twitter</td>
                              </tr>
                            </tbody>
                          </table>-->
                    </div>
                    <!--<div class="card-body p-5">
                        <div class="table-responsive">-->
                           <!-- <table class="table table-hover mb-0">
                                <thead>-->
                                   <!--<tr>
                                        <th>
                                            <div class="chk-option">
                                                <label class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                                    <input type="checkbox" class="custom-control-input">
                                                    <span class="custom-control-label"></span>
                                                </label>
                                            </div>
                                            Assigned
                                        </th>
                                        <th>Name</th>
                                        <th>Due Date</th>
                                        <th class="text-right">Priority</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="chk-option">
                                                <label class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                                    <input type="checkbox" class="custom-control-input">
                                                    <span class="custom-control-label"></span>
                                                </label>
                                            </div>
                                            <div class="d-inline-block align-middle">
                                                <img src="assets/images/user/avatar-4.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                <div class="d-inline-block">
                                                    <h6>John Deo</h6>
                                                    <p class="text-muted m-b-0">Graphics Designer</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Able Pro</td>
                                        <td>Jun, 26</td>
                                        <td class="text-right"><label class="badge badge-light-danger">Low</label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="chk-option">
                                                <label class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                                    <input type="checkbox" class="custom-control-input">
                                                    <span class="custom-control-label"></span>
                                                </label>
                                            </div>
                                            <div class="d-inline-block align-middle">
                                                <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                <div class="d-inline-block">
                                                    <h6>Jenifer Vintage</h6>
                                                    <p class="text-muted m-b-0">Web Designer</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Mashable</td>
                                        <td>March, 31</td>
                                        <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="chk-option">
                                                <label class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                                    <input type="checkbox" class="custom-control-input">
                                                    <span class="custom-control-label"></span>
                                                </label>
                                            </div>
                                            <div class="d-inline-block align-middle">
                                                <img src="assets/images/user/avatar-3.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                <div class="d-inline-block">
                                                    <h6>William Jem</h6>
                                                    <p class="text-muted m-b-0">Developer</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Flatable</td>
                                        <td>Aug, 02</td>
                                        <td class="text-right"><label class="badge badge-light-success">medium</label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="chk-option">
                                                <label class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                                    <input type="checkbox" class="custom-control-input">
                                                    <span class="custom-control-label"></span>
                                                </label>
                                            </div>
                                            <div class="d-inline-block align-middle">
                                                <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                <div class="d-inline-block">
                                                    <h6>David Jones</h6>
                                                    <p class="text-muted m-b-0">Developer</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Guruable</td>
                                        <td>Sep, 22</td>
                                        <td class="text-right"><label class="badge badge-light-primary">high</label></td>
                                    </tr>
                                    <tr>
                                        <th scope="col">#</th>
                                         <th scope="col">First</th>
                                         <th scope="col">Last</th>
                                        <th >Event</th>
                                         <td>Seminar on Python</td>
                                       </tr>
                                     </thead>
                                     <tbody>
                                       <tr>
                                         <th >Date</th>
                                         <td>24-11-22</td>
                                         
                                       </tr>
                                       <tr>
                                         <th >Status</th>
                                         <td>New</td>
                                       </tr>
                                       <tr>
                                         <th >Minimum Guests Allowed</th>
                                         <td >100</td>
                                       </tr>
                                       <tr>
                                         <th >Maximum Guests Allowed</th>
                                         <td >300</td>
                                       </tr>
                                       <tr>
                                         <th >Cost</th>
                                         <td >Rs-600/- only</td>
                                       </tr>
                                       <tr>
                                         <th >Description</th>
                                         <td >A seminar is a form of academic instruction, either at an academic institution</td>
                                       </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--<form action="/action_page.php">
                        <div class="mb-3 mt-3">
                          <label for="title">Event Title:</label>
                          <input type="text" class="form-control" id="title" placeholder="" name="evnt-t">
                        </div>
                        <div class="mb-3">
                          <label for="theme">Event Theme:</label>
                          <input type="text" class="form-control" id="" placeholder="" name="evnt-thm">
                        </div>
                        <div class="mb-3">
                            <label for="status">Event Status:</label>
                            <input type="text" class="form-control" id="" placeholder="" name="evnt-st">
                          </div>
                          <div class="mb-3">
                            <label for="min">Minimum Guest:</label>
                            <input type="number" class="form-control" id="" placeholder="" name="min-gue">
                          </div>
                          <div class="mb-3">
                            <label for="max">Maximum Guest:</label>
                            <input type="number" class="form-control" id="" placeholder="" name="max-gue">
                          </div>
                          <div class="mb-3">
                            <label for="date">Date:</label>
                            <input type="number" class="form-control" id="" placeholder="" name="date">
                          </div>
                          <div class="mb-3">
                            <label for="des">Description:</label>
                            <input type="text" class="form-control" id="" placeholder="" name="des">
                          </div>
                       
                        <button type="submit" class="btn btn-success">Create Event</button>
                      </form>-->
                    
                    
                                   
  
    <%-- Check if the success message session attribute exists and display the Sweet Alert --%>
    <%
        String removeSuccessMessage = (String) request.getSession().getAttribute("removeSuccessMessage");
        if (removeSuccessMessage != null && !removeSuccessMessage.isEmpty()) {
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'success',");
            out.println("  title: 'Success',");
            out.println("  text: '" + removeSuccessMessage + "',");
            out.println("});");
            out.println("</script>");
            // Remove the session attribute to prevent displaying the message again on subsequent requests
            request.getSession().removeAttribute("removeSuccessMessage");
        }
        
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
    
    <!-- Display the success alert -->
    <% String successMessage = (String) request.getSession().getAttribute("registrationSuccess");
       if (successMessage != null) {
    %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <%= successMessage %>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
            
             <% // Remove the session attribute after displaying the success message
           request.getSession().removeAttribute("registrationSuccess");
        %>
    <% } %>

    <!-- Display the error alert -->
    <% String errorMessage = (String) request.getSession().getAttribute("registrationError");
       if (errorMessage != null) {
    %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <%= errorMessage %>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
            
            <% // Remove the session attribute after displaying the error message
           request.getSession().removeAttribute("registrationError");
        %>
    <% } %>
    
    
    <%
String DB_URL = "jdbc:mysql://localhost:3306/onlineevent";
String DB_USER = "root";
String DB_PASSWORD = "Durga@123";

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

    // Retrieve the image from the appropriate table
    String sql = "SELECT * FROM eventman ";
    PreparedStatement statement = connection.prepareStatement(sql);
    ResultSet resultSet = statement.executeQuery();
%>

<table class="table">
    <thead>
        <tr>
            <th scope="col">S.No</th>
            <th scope="col">Photo</th>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Mobile</th>
            <th scope="col">Email</th>
            <th scope="col">Event Type</th>
            <th>Priority</th>
            <th>Access</th>
            
        </tr>
    </thead>
    <tbody>

<%
    int sNo = 1;
    while (resultSet.next()) {
    
      String status = resultSet.getString(9);
        String badgeClass;
        if (status.equals("Accepted")) {
            badgeClass = "badge badge-light-success";
        } else if (status.equals("Blocked")) {
            badgeClass = "badge badge-light-danger";
        } else {
            badgeClass = "badge badge-light-warning"; // Assuming "Pending" status
        }
    
        %>
        <tr>
            <td><%= sNo++ %></td>
            <td><img src="getImage.jsp?id=<%= resultSet.getString(1) %>" alt="user image" class="img-radius wid-50 align-top m-r-15"></td>
            <td><%= resultSet.getString("firstname") %></td>
            <td><%= resultSet.getString("lastname") %></td>
            <td><%= resultSet.getString("phone") %></td>
            <td><%= resultSet.getString("email") %></td>
            <td><%= resultSet.getString("event") %></td>
            <td><label class="<%= badgeClass %>"><%= status %></label></td>
            
           
            
            <!--td>
                <a href="acceptEvent.jsp?id=<%--= resultSet.getString(1) --%>">
                    <button type="button" class="btn btn-outline-success btn-sm">Access</button>
                </a>
                <a href="rejectEvent.jsp?id=<%--= resultSet.getString(1) --%>">
                    <button type="button" class="btn btn-outline-danger btn-sm">Remove</button>
                </a>
            </td-->
            
            
            <td>
                <div class="row">
                <form action="updateaction.jsp" method="post">
                    <input type="hidden" name="id" value="<%= resultSet.getString("id") %>">
                    <button type="submit" class="btn btn-outline-success btn-sm btn-icon-text mr-3" name="priority"
                            value="Accepted">
                        Allow
                        <i class="typcn typcn-edit btn-icon-append"></i>
                    </button>
                </form>
                <form action="updateaction.jsp" method="post">
                    <input type="hidden" name="id" value="<%= resultSet.getString("id") %>">
                    <button type="submit" class="btn btn-outline-warning btn-sm btn-icon-text mr-3" name="priority"
                            value="Blocked">
                        Block
                        <i class="typcn typcn-delete-outline btn-icon-append"></i>
                    </button>
                </form>
                     <!--form action="updateaction.jsp" method="post">
                    <input type="hidden" name="id" value="<%--= resultSet.getString("id") --%>">
                    <button type="submit" class="btn btn-outline-danger btn-sm btn-icon-text" name="priority"
                            value="Rejected">
                        <i class="bi bi-x-circle-fill"></i>
                        <i class="typcn typcn-delete-outline btn-icon-append"></i>
                    </button>
                </form-->
                    
                    <form action="removeaction_2.jsp" method="post">
    <input type="hidden" name="id" value="<%= resultSet.getString("id") %>">
    <button type="submit" class="btn btn-outline-danger btn-sm btn-icon-text" name="priority" value="Rejected">
        <i class="fas fa-times-circle"></i>
    </button>
</form>

                </div>
                
            </td>
        </tr>
<%
    }

    // Close resources
    resultSet.close();
    statement.close();
    connection.close();
} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
}
%>

    </tbody>
</table>

                </div>
            </div>
            <!-- <div class="col-xl-6 col-md-12">
                <div class="card latest-update-card">
                    <div class="card-header">
                        <h5>Latest Updates</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="latest-update-box">
                            <div class="row p-t-30 p-b-30">
                                <div class="col-auto text-right update-meta">
                                    <p class="text-muted m-b-0 d-inline-flex">2 hrs ago</p>
                                    <i class="feather icon-twitter bg-twitter update-icon"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6>+ 1652 Followers</h6>
                                    </a>
                                    <p class="text-muted m-b-0">You’re getting more and more followers, keep it up!</p>
                                </div>
                            </div>
                            <div class="row p-b-30">
                                <div class="col-auto text-right update-meta">
                                    <p class="text-muted m-b-0 d-inline-flex">4 hrs ago</p>
                                    <i class="feather icon-briefcase bg-c-red update-icon"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6>+ 5 New Products were added!</h6>
                                    </a>
                                    <p class="text-muted m-b-0">Congratulations!</p>
                                </div>
                            </div>
                            <div class="row p-b-0">
                                <div class="col-auto text-right update-meta">
                                    <p class="text-muted m-b-0 d-inline-flex">2 day ago</p>
                                    <i class="feather icon-facebook bg-facebook update-icon"></i>
                                </div>
                                <div class="col">
                                    <a href="#!">
                                        <h6>+1 Friend Requests</h6>
                                    </a>
                                    <p class="text-muted m-b-10">This is great, keep it up!</p>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <tr>
                                                <td class="b-none">
                                                    <a href="#!" class="align-middle">
                                                        <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <h6>Jeny William</h6>
                                                            <p class="text-muted m-b-0">Graphic Designer</p>
                                                        </div>
                                                    </a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <a href="#!" class="b-b-primary text-primary">View all Projects</a>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- prject ,team member start -->
            <!-- seo start -->
            <!-- <div class="col-xl-4 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-6">
                                <h3>$16,756</h3>
                                <h6 class="text-muted m-b-0">Visits<i class="fa fa-caret-down text-c-red m-l-10"></i></h6>
                            </div>
                            <div class="col-6">
                                <div id="seo-chart1" class="d-flex align-items-end"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-6">
                                <h3>49.54%</h3>
                                <h6 class="text-muted m-b-0">Bounce Rate<i class="fa fa-caret-up text-c-green m-l-10"></i></h6>
                            </div>
                            <div class="col-6">
                                <div id="seo-chart2" class="d-flex align-items-end"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-6">
                                <h3>1,62,564</h3>
                                <h6 class="text-muted m-b-0">Products<i class="fa fa-caret-down text-c-red m-l-10"></i></h6>
                            </div>
                            <div class="col-6">
                                <div id="seo-chart3" class="d-flex align-items-end"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- seo end -->

            <!-- Latest Customers start -->
            <!-- <div class="col-lg-8 col-md-12">
                <div class="card table-card review-card">
                    <div class="card-header borderless ">
                        <h5>Customer Reviews</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="review-block">
                            <div class="row">
                                <div class="col-sm-auto p-r-0">
                                    <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius profile-img cust-img m-b-15">
                                </div>
                                <div class="col">
                                    <h6 class="m-b-15">John Deo <span class="float-right f-13 text-muted"> a week ago</span></h6>
                                    <a href="#!"><i class="feather icon-star-on f-18 text-c-yellow"></i></a>
                                    <a href="#!"><i class="feather icon-star-on f-18 text-c-yellow"></i></a>
                                    <a href="#!"><i class="feather icon-star-on f-18 text-c-yellow"></i></a>
                                    <a href="#!"><i class="feather icon-star f-18 text-muted"></i></a>
                                    <a href="#!"><i class="feather icon-star f-18 text-muted"></i></a>
                                    <p class="m-t-15 m-b-15 text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer
                                        took a
                                        galley of type and scrambled it to make a type specimen book.</p>
                                    <a href="#!" class="m-r-30 text-muted"><i class="feather icon-thumbs-up m-r-15"></i>Helpful?</a>
                                    <a href="#!"><i class="feather icon-heart-on text-c-red m-r-15"></i></a>
                                    <a href="#!"><i class="feather icon-edit text-muted"></i></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-auto p-r-0">
                                    <img src="assets/images/user/avatar-4.jpg" alt="user image" class="img-radius profile-img cust-img m-b-15">
                                </div>
                                <div class="col">
                                    <h6 class="m-b-15">Allina D’croze <span class="float-right f-13 text-muted"> a week ago</span></h6>
                                    <a href="#!"><i class="feather icon-star-on f-18 text-c-yellow"></i></a>
                                    <a href="#!"><i class="feather icon-star f-18 text-muted"></i></a>
                                    <a href="#!"><i class="feather icon-star f-18 text-muted"></i></a>
                                    <a href="#!"><i class="feather icon-star f-18 text-muted"></i></a>
                                    <a href="#!"><i class="feather icon-star f-18 text-muted"></i></a>
                                    <p class="m-t-15 m-b-15 text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer
                                        took a
                                        galley of type and scrambled it to make a type specimen book.</p>
                                    <a href="#!" class="m-r-30 text-muted"><i class="feather icon-thumbs-up m-r-15"></i>Helpful?</a>
                                    <a href="#!"><i class="feather icon-heart-on text-c-red m-r-15"></i></a>
                                    <a href="#!"><i class="feather icon-edit text-muted"></i></a>
                                    <blockquote class="blockquote m-t-15 m-b-0">
                                        <h6>Allina D’croze</h6>
                                        <p class="m-b-0 text-muted">Lorem Ipsum is simply dummy text of the industry.</p>
                                    </blockquote>
                                </div>
                            </div>
                        </div>
                        <div class="text-right  m-r-20">
                            <a href="#!" class="b-b-primary text-primary">View all Customer Reviews</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="mb-3">Power</h5>
                                <h2>2789<span class="text-muted m-l-5 f-14">kw</span></h2>
                                <div id="power-card-chart1"></div>
                                <div class="row">
                                    <div class="col col-auto">
                                        <div class="map-area">
                                            <h6 class="m-0">2876 <span> kw</span></h6>
                                            <p class="text-muted m-0">month</p>
                                        </div>
                                    </div>
                                    <div class="col col-auto">
                                        <div class="map-area">
                                            <h6 class="m-0">234 <span> kw</span></h6>
                                            <p class="text-muted m-0">Today</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="mb-3">Temperature</h5>
                                <h2>7.3<span class="text-muted m-l-10 f-14">deg</span></h2>
                                <div id="power-card-chart3"></div>
                                <div class="row">
                                    <div class="col col-auto">
                                        <div class="map-area">
                                            <h6 class="m-0">4.5 <span> deg</span></h6>
                                            <p class="text-muted m-0">month</p>
                                        </div>
                                    </div>
                                    <div class="col col-auto">
                                        <div class="map-area">
                                            <h6 class="m-0">0.5 <span> deg</span></h6>

                                            <p class="text-muted m-0">Today</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="card chat-card">
                    <div class="card-header">
                        <h5>Chat</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row m-b-20 received-chat">
                            <div class="col-auto p-r-0">
                                <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40">
                            </div>
                            <div class="col">
                                <div class="msg">
                                    <p class="m-b-0">Nice to meet you!</p>
                                </div>
                                <p class="text-muted m-b-0"><i class="fa fa-clock-o m-r-10"></i>10:20am</p>
                            </div>
                        </div>
                        <div class="row m-b-20 send-chat">
                            <div class="col">
                                <div class="msg">
                                    <p class="m-b-0">Nice to meet you!</p>
                                </div>
                                <p class="text-muted m-b-0"><i class="fa fa-clock-o m-r-10"></i>10:20am</p>
                            </div>
                            <div class="col-auto p-l-0">
                                <img src="assets/images/user/avatar-3.jpg" alt="user image" class="img-radius wid-40">
                            </div>
                        </div>
                        <div class="row m-b-20 received-chat">
                            <div class="col-auto p-r-0">
                                <img src="assets/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40">
                            </div>
                            <div class="col">
                                <div class="msg">
                                    <p class="m-b-0">Nice to meet you!</p>
                                    <img src="assets/images/widget/dashborad-1.jpg" alt="">
                                    <img src="assets/images/widget/dashborad-3.jpg" alt="">
                                </div>
                                <p class="text-muted m-b-0"><i class="fa fa-clock-o m-r-10"></i>10:20am</p>
                            </div>
                        </div>
                        <div class="form-group m-t-15">
                            <label class="floating-label" for="Project">Send message</label>
                            <input type="text" name="task-insert" class="form-control" id="Project">
                            <div class="form-icon">
                                <button class="btn btn-primary btn-icon">
                                    <i class="feather icon-message-circle"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card user-card2">
                    <div class="card-body text-center">
                        <h6 class="m-b-15">Project Risk</h6>
                        <div class="risk-rate">
                            <span><b>5</b></span>
                        </div>
                        <h6 class="m-b-10 m-t-10">Balanced</h6>
                        <a href="#!" class="text-c-green b-b-success">Change Your Risk</a>
                        <div class="row justify-content-center m-t-10 b-t-default m-l-0 m-r-0">
                            <div class="col m-t-15 b-r-default">
                                <h6 class="text-muted">Nr</h6>
                                <h6>AWS 2455</h6>
                            </div>
                            <div class="col m-t-15">
                                <h6 class="text-muted">Created</h6>
                                <h6>30th Sep</h6>
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-success btn-block">Download Overall Report</button>
                </div> -->
            </div>
            <!-- Latest Customers end -->
        </div>
        <!-- [ Main Content ] end -->
    </div>
</div>
<!-- [ Main Content ] end -->
    <!-- Warning Section start -->
    <!-- Older IE warning message -->
    <!--[if lt IE 11]>
        <div class="ie-warning">
            <h1>Warning!!</h1>
            <p>You are using an outdated version of Internet Explorer, please upgrade
               <br/>to any of the following web browsers to access this website.
            </p>
            <div class="iew-container">
                <ul class="iew-download">
                    <li>
                        <a href="http://www.google.com/chrome/">
                            <img src="assets/images/browser/chrome.png" alt="Chrome">
                            <div>Chrome</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.mozilla.org/en-US/firefox/new/">
                            <img src="assets/images/browser/firefox.png" alt="Firefox">
                            <div>Firefox</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.opera.com">
                            <img src="assets/images/browser/opera.png" alt="Opera">
                            <div>Opera</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.apple.com/safari/">
                            <img src="assets/images/browser/safari.png" alt="Safari">
                            <div>Safari</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="assets/images/browser/ie.png" alt="">
                            <div>IE (11 & above)</div>
                        </a>
                    </li>
                </ul>
            </div>
            <p>Sorry for the inconvenience!</p>
        </div>
    <![endif]-->
    <!-- Warning Section Ends -->

    <!-- Required Js -->
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
