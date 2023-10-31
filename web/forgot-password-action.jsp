<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.text.DecimalFormat" %>

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
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Example using CDN link -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    String email = request.getParameter("email");
    String source = request.getParameter("source"); // Get the source parameter from the URL
    
    String characters2 = "123456789";
    int otpLength = 4;

    StringBuilder otpBuilder = new StringBuilder();
    Random random = new Random(); // Add this line to initialize the random variable

    for (int i = 0; i < otpLength; i++) {
        int index = random.nextInt(characters2.length());
        otpBuilder.append(characters2.charAt(index));
    }
    String otp = otpBuilder.toString();

    String url = "jdbc:mysql://localhost:3306/onlineevent";
    String username = "root";
    String dbpassword = "Durga@123";

    // JDBC objects
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null; // Add this line to declare resultSet

    try {
        // Connect to the database
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(url, username, dbpassword);

        // Check if email already exists in the appropriate table based on the source parameter
        String checkEmailQuery;
        if (source != null && source.equals("eventman")) {
            checkEmailQuery = "SELECT COUNT(*), firstname FROM eventman WHERE email=?";
        } else {
            checkEmailQuery = "SELECT COUNT(*), firstname FROM student WHERE email=?";
        }
        PreparedStatement checkEmailStatement = connection.prepareStatement(checkEmailQuery);
        checkEmailStatement.setString(1, email);
        resultSet = checkEmailStatement.executeQuery();
        resultSet.next();
        int count = resultSet.getInt(1);

        if (count > 0) {
            String firstname = resultSet.getString("firstname");
    
            // Update the OTP in the appropriate table based on the source parameter
            String updateOtpQuery;
            if (source != null && source.equals("eventman")) {
                updateOtpQuery = "UPDATE eventman SET otp=? WHERE email=?";
            } else {
                updateOtpQuery = "UPDATE student SET otp=? WHERE email=?";
            }
            PreparedStatement updateOtpStatement = connection.prepareStatement(updateOtpQuery);
            updateOtpStatement.setString(1, otp);
            updateOtpStatement.setString(2, email);
            updateOtpStatement.executeUpdate();
            
            // Send OTP to registered email
            final String senderEmail = "projects@codebook.in";
            final String senderPassword = "frwqvhawrnsxetyk";

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com"); // or your email provider's SMTP host
            props.put("mail.smtp.port", "587"); // or your email provider's SMTP port
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.ssl.trust", "*");

            Session esession = Session.getInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(senderEmail, senderPassword);
                }
            });

            MimeMessage message = new MimeMessage(esession);
            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("New OTP");
            message.setText("Dear " + firstname + ",\n Your OTP is: \nOTP: " + otp);

            Transport.send(message);

            session.setAttribute("email", email);
            session.setAttribute("source", source); // Store the source in session

            // Redirect to OTP page with email and source parameter
            String successMessage = "Email already Registered. A new OTP has been sent to your email address.";
            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js'></script>");
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'success',");
            out.println("  title: 'Success',");
            out.println("  text: '" + successMessage + "',");
            out.println("}).then(function() { window.location.href = 'otp2.jsp?source=" + source + "'; });");
            out.println("</script>");
        } else {
            // Handle the case when the email is not found in the table
            String errorMessage = "Email not found.";
            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js'></script>");
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'error',");
            out.println("  title: 'Error',");
            out.println("  text: '" + errorMessage + "',");
            out.println("}).then(function() { window.location.href = 'forgot-password.jsp'; });");
            out.println("</script>");
        }
    } catch (Exception e) {
        // Handle exceptions here
        e.printStackTrace();
        String errorMessage = e.getMessage();
        out.println("Error: " + errorMessage);
    } finally {
        // Close the database resources
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
