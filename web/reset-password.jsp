<%-- 
    Document   : reset-password
    Created on : 02-Aug-2023, 2:43:52 pm
    Author     : manikanta
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import="javax.mail.PasswordAuthentication" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="java.io.FileInputStream" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Example using CDN link -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>

    
    
    <%
   
    String email = request.getParameter("email");
    

    int passwordLength = 5;
    StringBuilder passwordBuilder = new StringBuilder();
        Random random = new Random();
    for (int i = 0; i < passwordLength; i++) {
        int index = random.nextInt(characters1.length());
        passwordBuilder.append(characters1.charAt(index));
    }
    
String password = passwordBuilder.toString();

    String url = "jdbc:mysql://localhost:3306/onlineevent";
    String username = "root";
    String dbpassword = "Durga@123";
    // JDBC objects
    Connection connection = null;
    PreparedStatement statement = null;
    try{
    
    String checkEmailQuery = "SELECT COUNT(*) FROM student WHERE email=?";
            Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(url, username, dbpassword);

        // Check if email already exists
        PreparedStatement checkEmailStatement = connection.prepareStatement(checkEmailQuery);
        checkEmailStatement.setString(1, email);

    ResultSet resultSet = checkEmailStatement.executeQuery();
        resultSet.next();
        int count = resultSet.getInt(1);
                if (count > 0) {
                
        
                String updatepasswordQuery = "UPDATE student SET password=? WHERE email=?";
            PreparedStatement updatepasswordStatement = connection.prepareStatement(updatepasswordQuery);
            updatepasswordStatement.setString(1, password);
            updatepasswordStatement.setString(2, email);
            updatepasswordStatement.executeUpdate();


                       String retrieveUserQuery = "SELECT userid, password FROM student WHERE email=?";
PreparedStatement retrieveUserStatement = connection.prepareStatement(retrieveUserQuery);
retrieveUserStatement.setString(1, email);
ResultSet userResult = retrieveUserStatement.executeQuery();
if (userResult.next()) {
    String useridFromDB = userResult.getString("userid");

        }
