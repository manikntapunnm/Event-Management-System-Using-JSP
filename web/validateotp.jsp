<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.io.IOException" %>

<%
// Ensure that the user is logged in and has an active session.
HttpSession esession = request.getSession(false);
if (esession == null || esession.getAttribute("email") == null) {
    response.sendRedirect("student-login.jsp"); // Redirect to login page if the user is not logged in.
    return;
}

// Get the entered OTP and email from the request parameters.
String enteredOtp = request.getParameter("otp");
String email = request.getParameter("email");

try {
    // Replace the following with your actual database details
    String dbURL = "jdbc:mysql://localhost:3306/onlineevent";
    String dbUsername = "root";
    String dbPassword = "Durga@123";

    // Load the MySQL JDBC driver
    Class.forName("com.mysql.jdbc.Driver");

    // Create a database connection
    Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

    // Prepare the SQL query to fetch the OTP for the provided email
    String sql = "SELECT otp FROM student WHERE email = ?";
    PreparedStatement preparedStatement = connection.prepareStatement(sql);

    preparedStatement.setString(1, email);

    // Execute the query and get the result set
    ResultSet resultSet = preparedStatement.executeQuery();

    // Check if the email exists and if the OTP matches
    if (resultSet.next()) {
        String storedOtp = resultSet.getString("otp");
         out.println("Stored OTP: " + storedOtp);
        out.println("Entered OTP: " + enteredOtp);
        
        if (enteredOtp.equals(storedOtp)) {
        String updateSql = "UPDATE student SET action = 'Accepted', otpstatus = 'Verified' WHERE email = ?";

        //String updateSql = "UPDATE student SET action = 'Accepted' WHERE email = ?";
            PreparedStatement updateStatement = connection.prepareStatement(updateSql);
            updateStatement.setString(1, email);
            updateStatement.executeUpdate();
            // If the OTP matches, redirect to student-login.jsp
            
                    String successMessage = "Registration Successful. Use Userid and password to Login";
    out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js'></script>");
    out.println("<script>");
    out.println("Swal.fire({");
    out.println("  icon: 'success',");
    out.println("  title: 'Success',");
    out.println("  text: '" + successMessage + "',");
   // out.println("}).then(function() { window.location.href = 'student-login.jsp'; });");
    out.println("}).then(function() { window.location.href = 'student-login.jsp'; });");
    out.println("</script>");
            //response.sendRedirect("student-login.jsp");
            return; // Exit from the script to avoid further processing.
        }
    } else {
        out.println("Email not found in the database.");
    }

    // If the OTP does not match or the email does not exist, redirect to otp.jsp
    response.sendRedirect("otp.jsp");

    // Close the resources
    resultSet.close();
    preparedStatement.close();
    connection.close();
} catch (ClassNotFoundException | SQLException | IOException e) {
    // Handle any database-related errors here and display an error message using getMessage()
    String errorMessage = e.getMessage();
    out.println("Error: " + errorMessage);
}
%>
