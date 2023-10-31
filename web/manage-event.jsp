<%-- 
    Document   : manage-event
    Created on : 27-Jul-2023, 12:21:03 pm
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
    <link rel="icon" href="assetse/images/favicon.ico" type="image/x-icon">

    <!-- vendor css -->
    <link rel="stylesheet" href="assetse/css/style.css">
    
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
						<img class="img-radius" src="assetse/images/user/avatar-2.jpg" alt="User-Profile-Image">
						<div class="user-details">
							<div id="more-details">Event Manager<i class="fa fa-caret-down"></i></div>
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
					    <a href="eventman-dashboard.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Home</span></a>
					</li>
					<li class="nav-item pcoded-hasmenu">
					    <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Event Management</span></a>
					    <ul class="pcoded-submenu">
					        <li><a href="add-event.jsp"  >Add Event</a></li>
					        <li><a href="manage-event.jsp"  >Manage Event</a></li>
					    </ul>
					</li>
                    <li class="nav-item">
					    <a href="view-student.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-user"></i></span><span class="pcoded-mtext">View Students</span></a>
					</li>
                    <li class="nav-item">
					    <a href="event-feedback_1.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Event FeedBack</span></a>
					</li>
                   
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
						<!-- <img src="assetse/images/logo.png" alt="" class="logo"> -->
						<img src="assetse/images/logo-icon.png" alt="" class="logo-thumb">
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
												<img class="img-radius" src="assetse/images/user/avatar-1.jpg" alt="Generic placeholder image">
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
												<img class="img-radius" src="assetse/images/user/avatar-2.jpg" alt="Generic placeholder image">
												<div class="media-body">
													<p><strong>Joseph William</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>10 min</span></p>
													<p>Prchace New Theme and make payment</p>
												</div>
											</div>
										</li>
										<li class="notification">
											<div class="media">
												<img class="img-radius" src="assetse/images/user/avatar-1.jpg" alt="Generic placeholder image">
												<div class="media-body">
													<p><strong>Sara Soudein</strong><span class="n-time text-muted"><i class="icon feather icon-clock m-r-10"></i>12 min</span></p>
													<p>currently login</p>
												</div>
											</div>
										</li>
										<li class="notification">
											<div class="media">
												<img class="img-radius" src="assetse/images/user/avatar-2.jpg" alt="Generic placeholder image">
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
										<img src="assetse/images/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
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
                        <h5>Manage Event</h5>
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
                                                <img src="assetse/images/user/avatar-4.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
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
                                                <img src="assetse/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
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
                                                <img src="assetse/images/user/avatar-3.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
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
                                                <img src="assetse/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
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
                    
                    
                    
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Base64" %>

<%
String DB_URL = "jdbc:mysql://localhost:3306/onlineevent";
String DB_USER = "root";
String DB_PASSWORD = "Durga@123";

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

    // Assuming you have retrieved the total number of leave requests in the database
    int totalLeaveRequests = 0; // Set an initial value

    // Define the number of leave requests to display per page
    int requestsPerPage = 4;

    // Calculate the total number of pages
    int totalPages = 0; // Set an initial value

    // Get the current page number from the request parameter
    int currentPage = 1;
    String pageParam = request.getParameter("page");
    if (pageParam != null) {
        currentPage = Integer.parseInt(pageParam);
        if (currentPage < 1) {
            currentPage = 1;
        }
    }

    // Calculate the starting index for the current page
    int startIndex = (currentPage - 1) * requestsPerPage;

    // Retrieve the total number of leave requests from the database
    String countQuery = "SELECT COUNT(*) AS total FROM events";
    Statement countStatement = connection.createStatement();
    ResultSet countResult = countStatement.executeQuery(countQuery);
    if (countResult.next()) {
        totalLeaveRequests = countResult.getInt("total");
    }
    countResult.close();
    countStatement.close();

    // Calculate the total number of pages
    totalPages = (int) Math.ceil((double) totalLeaveRequests / requestsPerPage);

    // Modify your database query to include pagination using the LIMIT clause
    //String query = "SELECT * FROM events LIMIT ?, ?";
    String query = "SELECT * FROM events ORDER BY date DESC LIMIT ?, ?";

    PreparedStatement statement = connection.prepareStatement(query);
    statement.setInt(1, startIndex);
    statement.setInt(2, requestsPerPage);

    // Execute the query and process the results
    ResultSet resultSet = statement.executeQuery();
    
%>

<table class="table">
    <thead>
        <tr>
            <th scope="col">S.No</th>
            <th>Photo</th>
            <th scope="col">Title</th>
            <th scope="col">Theme</th>
            <th scope="col">Status</th>
            <th scope="col">Min Guest</th>
            <th scope="col">Max Guest</th>
            
            <th scope="col">Action</th>
            
        </tr>
    </thead>
    <tbody>
        <%
        int sNo = (currentPage - 1) * requestsPerPage + 1;
        while (resultSet.next()) {
        
            String imageId = resultSet.getString(1); // Assuming the image ID is in the first column of the student table

            // Construct the image URL to fetch the image from add-student-image.jsp
            String imageUrl = "getImage_2.jsp?id=" + imageId;
        %>
        <tr>
            <td><%= sNo++ %></td>
            <td><img src="<%= imageUrl %>" alt="user image" class="img-radius wid-90 align-top m-r-15"></td>
            <td><%= resultSet.getString("title") %></td>
            <%--<td><%= resultSet.getString("description") %></td>--%>
            <td>
    <textarea rows="2" cols="15" readonly><%= resultSet.getString("description") %></textarea>
</td>
            <td><%= resultSet.getString("status") %></td>
            <td><%= resultSet.getString("ming") %></td>
            <td><%= resultSet.getString("maxg") %></td>
            
            <td>
                <div class="row">
                    
                
                                            <%
    String id = resultSet.getString("id"); // Assuming the ID is in the "id" column of the student table

    // Construct the URL for the delete action
    String deleteUrl = "removeaction_1.jsp?id=" + id;
    String ueventUrl = "update-event.jsp?id=" + id;
%>
   
                    
                    
                                        <form action="<%= ueventUrl %>" method="post" onsubmit="return confirmUpdate();">
    <input type="hidden" name="id" value="<%= id %>">
    <button type="submit" class="btn btn-outline-primary btn-sm btn-icon-text mr-3"
                            name="priority" value="Accepted">
                            Update
                            <i class="typcn typcn-edit btn-icon-append"></i>
                        </button>
</form> 
                        
                       <%-- <form action="update.jsp" method="post">
                        <input type="hidden" name="id" value="<%= resultSet.getString("id") %>">
                        <button type="submit" class="btn btn-outline-primary btn-sm btn-icon-text mr-3"
                            name="priority" value="Accepted">
                            Update
                            <i class="typcn typcn-edit btn-icon-append"></i>
                        </button>
                    </form>




<form action="removeaction.jsp" method="post">
                        <input type="hidden" name="id" value="<%= resultSet.getString("id") %>">
                        <button type="submit" class="btn btn-outline-danger btn-sm btn-icon-text" name="priority"
                            value="Rejected">
                            <i class="fas fa-times-circle"></i>
                        </button>
                    </form>--%>
                        
                     
                        
                   <form action="<%= deleteUrl %>" method="post" onsubmit="return confirmDelete();">
    <input type="hidden" name="id" value="<%= id %>">
    <button type="submit" class="btn btn-outline-danger btn-sm btn-icon-text" name="priority" value="Rejected">
        <i class="fas fa-times-circle"></i>
    </button>
</form> 
                        
                        
     <script>
    function confirmDelete() {
        return confirm("Are you sure you want to remove this event?");
    }
    
    
     function confirmUpde() {
        return confirm("Are you sure you want to 'update' this event?");
    }
    
    
</script>                   
                        
                        
                </div>
            </td>
        </tr>
        <% } %>
    </tbody>
</table>

    
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>

    <%-- Check if the success message session attribute exists and display the Sweet Alert --%>
    <%
        String SuccessMessage = (String) request.getSession().getAttribute("SuccessMessage");
        if (SuccessMessage != null && !SuccessMessage.isEmpty()) {
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'success',");
            out.println("  title: 'Success',");
            out.println("  text: '" + SuccessMessage + "',");
            out.println("});");
            out.println("</script>");
            // Remove the session attribute to prevent displaying the message again on subsequent requests
            request.getSession().removeAttribute("SuccessMessage");
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

<%--<!--div class="pagination-container text-center">
    <div class="pagination mr-3 ">
        <div class="row ">
        <% if (currentPage > 1) { %>
            <a href="?page=<%= currentPage - 1 %>" class="page-box"><</a>
        <% } %>

        <% for (int pageNum = 1; pageNum <= totalPages; pageNum++) { %>
        <div class="row ">
            <% if (pageNum == currentPage) { %>
         
                <a href="?page=<%= pageNum %>" class="page-box active-box ml-3 mr-3"><%= pageNum %></a>
            <% } else { %>
                <a href="?page=<%= pageNum %>" class="page-box ml-3"><%= pageNum %></a>
            <% } %>
            
        <% } %>   

        <% if (currentPage < totalPages) { %>
        
            <a href="?page=<%= currentPage + 1 %>" class="page-box">></a>
            
        <% } %><form id="page-form" action="" method="get">
            <input type="number" name="page" id="page-input" min="1" max="<%--= totalPages %>" value="<%= currentPage %>">
            <button type="submit" class="page-box">Go</button>
        </form>
        </div>
        </div>--%>

<div class="pagination-container text-center">
    <div class="pagination mr-3">
        <div class="row">
            <% if (currentPage > 1) { %>
                <a href="?page=<%= currentPage - 1 %>" class="page-box mr-3"><</a>
            <% } %>

            <% if (currentPage > 3) { %>
                <a href="?page=1" class="page-box mr-3">1</a>
                <% if (currentPage > 4) { %>
                    <span class="page-dots mr-3">...</span>
                <% } %>
            <% } %>

            <% for (int pageNum = Math.max(1, currentPage - 2); pageNum <= Math.min(totalPages, currentPage + 2); pageNum++) { %>
                <div class="row mr-3">
                    <% if (pageNum == currentPage) { %>
                        <a href="?page=<%= pageNum %>" class="page-box active-box "><%= pageNum %></a>
                    <% } else { %>
                        <a href="?page=<%= pageNum %>" class="page-box "><%= pageNum %></a>
                    <% } %>
                </div>
            <% } %>

            <% if (currentPage < totalPages - 2) { %>
                <% if (currentPage < totalPages - 3) { %>
                    <span class="page-dots ">...</span>
                <% } %>
                <a href="?page=<%= totalPages %>" class="page-box"><%= totalPages %></a>
            <% } %>

            <% if (currentPage < totalPages) { %>
                <a href="?page=<%= currentPage + 1 %>" class="page-box">></a>
            <% } %>

            <form id="page-form" action="" method="get">
                <input type="number" name="page" id="page-input" min="1" max="<%= totalPages %>" value="<%= currentPage %>">
                <button type="submit" class="page-box">Go</button>
            </form>
        </div>
    </div>
</div>


            <style>
    .pagination-container {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }

    .pagination {
        display: inline-block;
    }

    .page-box {
        /* Add styles for the pagination links/buttons here */
        margin: 5px;
        padding: 5px 10px;
        text-decoration: none;
        border: 1px solid #ccc;
        color: #333;
        border-radius: 3px;
    }
 /* Reduce the size of the page input text box */
    #page-input {
        width: 50px; /* Adjust the width as per your preference */
        padding: 2px 5px; /* Adjust padding as needed */
    }
    .page-box.active-box {
        /* Add styles for the active page link/button here */
        background-color: #007bff;
        color: #fff;
        border-color: #007bff;
    }
</style>






<%
    // Close resources
    resultSet.close();
    statement.close();
    connection.close();
} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
}
%>

 
                     


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
                                                        <img src="assetse/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
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
                                    <img src="assetse/images/user/avatar-2.jpg" alt="user image" class="img-radius profile-img cust-img m-b-15">
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
                                    <img src="assetse/images/user/avatar-4.jpg" alt="user image" class="img-radius profile-img cust-img m-b-15">
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
                                <img src="assetse/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40">
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
                                <img src="assetse/images/user/avatar-3.jpg" alt="user image" class="img-radius wid-40">
                            </div>
                        </div>
                        <div class="row m-b-20 received-chat">
                            <div class="col-auto p-r-0">
                                <img src="assetse/images/user/avatar-2.jpg" alt="user image" class="img-radius wid-40">
                            </div>
                            <div class="col">
                                <div class="msg">
                                    <p class="m-b-0">Nice to meet you!</p>
                                    <img src="assetse/images/widget/dashborad-1.jpg" alt="">
                                    <img src="assetse/images/widget/dashborad-3.jpg" alt="">
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
                            <img src="assetse/images/browser/chrome.png" alt="Chrome">
                            <div>Chrome</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.mozilla.org/en-US/firefox/new/">
                            <img src="assetse/images/browser/firefox.png" alt="Firefox">
                            <div>Firefox</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.opera.com">
                            <img src="assetse/images/browser/opera.png" alt="Opera">
                            <div>Opera</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.apple.com/safari/">
                            <img src="assetse/images/browser/safari.png" alt="Safari">
                            <div>Safari</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="assetse/images/browser/ie.png" alt="">
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
    <script src="assetse/js/vendor-all.min.js"></script>
    <script src="assetse/js/plugins/bootstrap.min.js"></script>
    <script src="assetse/js/ripple.js"></script>
    <script src="assetse/js/pcoded.min.js"></script>

<!-- Apex Chart -->
<script src="assetse/js/plugins/apexcharts.min.js"></script>


<!-- custom-chart js -->
<script src="assetse/js/pages/dashboard-main.js"></script>
</body>

</html>
