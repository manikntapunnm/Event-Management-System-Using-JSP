<%-- 
    Document   : update-password
    Created on : 02-Aug-2023, 3:59:00 pm
    Author     : manikanta
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded">
    <title>Forgot Password</title>

    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">
    <style>
        /* Add your custom styles here */
        .password-box {
            width: 40px;
            height: 40px;
            border: 1px solid #ccc;
            display: inline-block;
            text-align: center;
            line-height: 40px;
            font-size: 18px;
            margin-right: 10px;
        }

        .password-input {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        /* Reduce the width of the card */
        .password-card {
            width: 800px;
            max-width: 100%;
        }
        .card {
        padding: 1rem;
        margin: 0;
    }

    .form-group {
        margin-bottom: 0.5rem;
    }

    .form-group label {
        margin-bottom: 0.25rem;
    }

        /* Vertical Navigation Bar */
        /* Add your styles here */
    </style>
</head>

<body class="">

    <div class="pcoded-main-container d-flex align-items-center justify-content-center">
        <div class="pcoded-content">
            <!-- [ breadcrumb ] start -->
            <div class="page-header">
                <!-- Page header content here -->
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 col-md-12">
                        <div class="card table-card password-card">
                            <div class="card-header bg-light">
                                <h5>Update Password</h5>
                                <div class="card-header-right">
                                    <form action="index.jsp" method="get">
                                        <button type="submit" class="btn btn-link p-0"><sub>@codebook.in </sub></button>
                                    </form>
                                    <p><%= session.getAttribute("email") %></p>
                                </div>
                                
                            </div>
                            <div class="card-body p-5">
                                <div class="table-responsive d-flex justify-content-center">
                                    <form action="update-password-action.jsp" onsubmit="return checkPasswords()" method="post">
                                        <div class="form-group">
                                            <label for="password">Enter Password</label>
                                            <input type="password" class="form-control" name="password" id="password" required>
                                            <input type="hidden" name="source" value="<%= session.getAttribute("source") %>" />
                                        </div>
                                        <div class="form-group">
                                            <label for="Rpassword">ReEnter Password</label>
                                            <input type="password" class="form-control" name="Rpassword" id="Rpassword" required>
                                           
                                        </div>
                                        <div class="form-group">
                                            <input type="checkbox" onclick="togglePasswordVisibility()"> Show Password
                                        </div>
                                        <button type="submit" class="btn btn-primary mt-3 d-block mx-auto">Reset Password</button>
                                    </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                                        
                                        
 

            <script>
                function checkPasswords() {
                    var password = document.getElementById("password").value;
                    var Rpassword = document.getElementById("Rpassword").value;

                    if (password !== Rpassword) {
                        alert("Passwords do not match.");
                        return false;
                    }

                    return true;
                }

                function togglePasswordVisibility() {
                    var passwordInput = document.getElementById("password");
                    var RpasswordInput = document.getElementById("Rpassword");

                    if (passwordInput.type === "password") {
                        passwordInput.type = "text";
                        RpasswordInput.type = "text";
                    } else {
                        passwordInput.type = "password";
                        RpasswordInput.type = "password";
                    }
                }
            </script>

        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
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
