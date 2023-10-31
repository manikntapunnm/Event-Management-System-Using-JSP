<%-- 
    Document   : feedback-action
    Created on : 30-Jul-2023, 6:23:23 pm
    Author     : manikanta
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*, java.util.*, javax.servlet.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback Submission</title>
</head>
<body>
    <%-- Establish the database connection --%>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.SQLException" %>

    <%-- Database credentials --%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>

    <%-- Set your database credentials here --%>
    <% String DB_URL = "jdbc:mysql://localhost:3306/onlineevent";
       String DB_USER = "root";
       String DB_PASSWORD = "Durga@123";
    String email = (String) session.getAttribute("email");
    String firstname = (String) session.getAttribute("firstname");
     String phone = (String) session.getAttribute("phone");
    
       String event = request.getParameter("event");
       String entertainmentRating = request.getParameter("entertainmentRating");
       String inspirationRating = request.getParameter("inspirationRating");
       String feedbackText = request.getParameter("text");

       try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
           Statement statement = connection.createStatement();

           // Insert the feedback data into the database
           String insertQuery = "INSERT INTO feedback (name,email,phone,event, rating,rating2, description) VALUES (?,?,?,?, ?, ?, ?)";
           
           PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
             preparedStatement.setString(1, firstname);
           preparedStatement.setString(2, email);
           preparedStatement.setString(3,phone);
           preparedStatement.setString(4, event);
           preparedStatement.setString(5, entertainmentRating);
           preparedStatement.setString(6, inspirationRating);
           preparedStatement.setString(7, feedbackText);
           preparedStatement.executeUpdate();

           // Close resources
           preparedStatement.close();
           statement.close();
           connection.close();

           // Display a success message
           request.getSession().setAttribute("updateSuccessMessage", "Thank You Very Much Feedback.");
           response.sendRedirect("feedback.jsp");
       } catch (Exception e) {
           out.println("<h3>Error submitting feedback: " + e.getMessage() + "</h3>");
       }
    %>
</body>
</html>
