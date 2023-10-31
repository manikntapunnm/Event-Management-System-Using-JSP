<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>College Event & Workshop Management System</title>
  	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />
    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="assets/css/style.css">
     <style>
 .table-container {
    overflow-x: auto;
}

.table td,
.table th {
    max-width: 100%; /* Adjust the width as needed */
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

/* Allow buttons to wrap to the next line if there is not enough horizontal space */

}


.fa {
        font-size: 20px; /* Adjust the font size as needed */
    }

    .active-star {
        color: orange; /* Set the color for active stars (yellow) */
    }
   

    .inactive-star {
        color: gray; /* Set the color for inactive stars (grey) */
    }
    </style>
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
							
							<li class="list-group-item"><a href="index.jsp"><i class="feather icon-log-out m-r-5"></i>Logout</a></li>
						</ul>
					</div>
				</div>
				
				<ul class="nav pcoded-inner-navbar ">
					<li class="nav-item pcoded-menu-caption">
					    <label>Navigation</label>
					</li>
					<li class="nav-item">
					    <a href=" admin-dashboard.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Home</span></a>
					</li>
					<li class="nav-item pcoded-hasmenu">
					    <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Event Manager</span></a>
					    <ul class="pcoded-submenu">
					        <li><a href="add-event-manager.jsp" target="_blank">Add Event Manager</a></li>
					        <li><a href="manage-event-manager.jsp" target="_blank">Manage Event Manager</a></li>
					    </ul>
					</li>
                    <li class="nav-item pcoded-hasmenu">
					    <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">Student</span></a>
					    <ul class="pcoded-submenu">
					        <li><a href="add-student.jsp" target="_blank">Add Student</a></li>
					        <li><a href="manage-student.jsp" target="_blank">Manage Student</a></li>
                            <li><a href="pending-students.jsp" target="_blank">Pending Student</a></li>
                            <li><a href="enroll-students.jsp" target="_blank">Enroll Student</a></li>
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
						<!-- ========   change your logo hear   ============ -->
                        <!-- college portal -->
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
										<a href="../solmusic-master/index.jsp" class="dud-logout" title="Logout">
											<i class="feather icon-log-out"></i>
										</a>
									</div>
									
								</div>
							</div>
						</li>
					</ul>
				</div>
				
			
	</header>
	
	
	

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
                       
                    </div>
                </div>
            </div>
        </div>
       
       
        
        <!-- pending-->
        
        <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


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
    int requestsPerPage = 8;

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
    String countQuery = "SELECT COUNT(*) AS total FROM feedback";
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
    String query = "SELECT * FROM feedback LIMIT ?, ?";
    PreparedStatement statement = connection.prepareStatement(query);
    statement.setInt(1, startIndex);
    statement.setInt(2, requestsPerPage);

    // Execute the query and process the results
    ResultSet resultSet = statement.executeQuery();
    //class="table"
%>

<div class="col-xl-12  col-md-12">
    <div class="card table-card">
        <div class="card-header">
            <h5>Event FeedBack</h5>
            <div class="card-header-right">
                <div class="btn-group card-option">
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        <i class="feather icon-more-horizontal"></i>
                    </button>
                    <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                        <li class="dropdown-item full-card"><a href="#!"><span><i
                                        class="feather icon-maximize"></i> maximize</span><span
                                    style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                        <li class="dropdown-item minimize-card"><a href="#!"><span><i
                                        class="feather icon-minus"></i> collapse</span><span
                                    style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>

                    </ul>
                </div>
            </div>
        </div>

        <div class="card-body">
            <div class="table-container">
                <!-- Your table goes here -->
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">S.No</th>
                            <th scope="col">Name</th>
                            
                            <th scope="col">Email</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Event</th>
                           
                            <th scope="col">Rating</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>

                    <tbody>
                        <%
                        int sNo = (currentPage - 1) * requestsPerPage + 1;
                        while (resultSet.next()) {
                            String id = resultSet.getString("id");
                            String name = resultSet.getString("name");
                           String description = resultSet.getString("description");
                            String email = resultSet.getString("email");
                            String phone = resultSet.getString("phone");
                            String event = resultSet.getString("event");
                            //String rating = resultSet.getString("rating");
                            String ratingColumn;
                            int rating;
                            if (event.equalsIgnoreCase("Musical Nights") || event.equalsIgnoreCase("LiveStream")) {
                                ratingColumn = "rating";
                                rating = resultSet.getInt("rating"); // Assuming the rating is in the "rating" column of the student table
                            } else {
                                ratingColumn = "rating2";
                                rating = resultSet.getInt("rating2"); // Assuming the rating2 is in the "rating2" column of the student table
                            }
                            
                            /* int rating = resultSet.getInt("rating"); // Assuming the rating is in the "rating" column of the student table

                            // Calculate the number of active and inactive stars
                            int activeStars = rating;
                            int inactiveStars = 5 - rating;
                            int rating2 = resultSet.getInt("rating2"); // Assuming the rating is in the "rating" column of the student table
*/
                            // Calculate the number of active and inactive stars
                            int activeStars = rating;
                            int inactiveStars = 5 - rating;


                            // Your code here to display the details for each feedback entry
                        %>

                        <tr>
                            <td><%= sNo++ %></td>
                            <td><%= name %></td>
                           
                            <td><%= email %></td>
                            <td><%= phone %></td>
                            <td><%= event %></td>
                            
                            <%-- <td>
                <% for (int i = 1; i <= 5; i++) { %>
                    <span class="fa fa-star <%= i <= activeStars ? "active-star" : "inactive-star" %>"></span>
                <% } %>
            </td>
                        <td>
                <% for (int i = 1; i <= 5; i++) { %>
                    <span class="fa fa-star <%= i <= activeStars2 ? "active-star" : "inactive-star" %>"></span>
                <% } %>
            </td>--%>
                            <td>
                <% for (int i = 1; i <= 5; i++) { %>
                    <span class="fa fa-star <%= i <= activeStars ? "active-star" : "inactive-star" %>"></span>
                <% } %>
            </td>  
                      
                            
                            <td><textarea rows="1" cols="10"><%= description %></textarea></td>
                        </tr>

                        <% } %>
                    </tbody>
                </table>
            </div>

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
                            <input type="number" name="page" id="page-input" min="1" max="<%= totalPages %>"
                                value="<%= currentPage %>">
                            <button type="submit" class="page-box">Go</button>
                        </form>
                    </div>
                </div>
            </div>
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

     
        
         <!-- pending-->
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
           
            </div>
            <!-- Latest Customers end -->
        </div>
        <!-- [ Main Content ] end -->
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
