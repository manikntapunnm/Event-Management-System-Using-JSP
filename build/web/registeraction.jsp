<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="java.net.URL, java.net.HttpURLConnection" %> <!-- Add this line -->

<!DOCTYPE html>
<html>
<head>
    <!-- Example using CDN link -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    String serverFilePath = "";
    String fileName = "";

    String firstname = "";
    String lastname = "";
    String email = "";
    String phone = "";
    String college = "";
    String year = "";
    String image = "";
   
    
       if (firstname == null || lastname == null || email == null || phone == null || college == null || year == null || image == null) {
        out.println("<h2>Error</h2>");
        out.println("<p>All fields are required.</p>");
        return;
    }

    if (request.getContentType() != null && request.getContentType().startsWith("multipart/form-data")) {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null; // Added ResultSet for querying the email
        FileInputStream input = null; // Declare the input variable

        try {
            List<FileItem> items = upload.parseRequest(request);

            for (FileItem item : items) {
                if (!item.isFormField()) {
                    String originalFileName = new File(item.getName()).getName();
                    /*String timeStamp = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
                    String uniqueFileName = timeStamp + "_" + originalFileName;

                    serverFilePath = "C:/Users/manikanta/OneDrive/Documents/NetBeansProjects/EMS/build/web/img/teachers/" + uniqueFileName;
                    item.write(new File(serverFilePath));*/
                    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                    String timeStamp = dateFormat.format(new Date());
                    String truncatedTimeStamp = timeStamp.substring(8, 13); // Extract 5 digits from the timestamp
                    String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                    serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\EMS\\build\\web\\img\\students\\" + uniqueFileName;
                    // serverFilePath = "img\\students\\" + uniqueFileName;
                    item.write(new File(serverFilePath));

                    fileName = uniqueFileName;
                } else {
                    String fieldName = item.getFieldName();
                    String fieldValue = item.getString();
                    if ("firstname".equals(fieldName)) {
                        firstname = fieldValue;
                    } else if ("lastname".equals(fieldName)) {
                        lastname = fieldValue;
                    } else if ("email".equals(fieldName)) {
                        email = fieldValue;
                    } else if ("phone".equals(fieldName)) {
                        phone = fieldValue;
                    } else if ("college".equals(fieldName)) {
                        college = fieldValue;
                    } else if ("year".equals(fieldName)) {
                        year = fieldValue;
                    }
                }
            }

            String prefix = "ST";
            int minUserId = 1;
            int maxUserId = 999;

            String characters1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
            String characters2 = "123456789";
            int passwordLength = 5;
            int otpLength = 4;
            StringBuilder passwordBuilder = new StringBuilder();
            StringBuilder otpBuilder = new StringBuilder();

            Random random = new Random();
            for (int i = 0; i < passwordLength; i++) {
                int index = random.nextInt(characters1.length());
                passwordBuilder.append(characters1.charAt(index));
            }

            for (int i = 0; i < otpLength; i++) {
                int index = random.nextInt(characters2.length());
                otpBuilder.append(characters2.charAt(index));
            }

            int randomUserId = random.nextInt(maxUserId - minUserId + 1) + minUserId;
            String userid = prefix + String.format("%03d", randomUserId);
            String password = passwordBuilder.toString();
            String otp = otpBuilder.toString();
          
            
            
   
            
            //database

            String dburl = "jdbc:mysql://localhost:3306/onlineevent";
            String dbusername = "root";
            String dbpassword = "Durga@123";
            
            
           

            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dburl, dbusername, dbpassword);



            // Check if email already exists in the database
            String emailCheckQuery = "SELECT COUNT(*) FROM student WHERE email = ?";
            PreparedStatement emailCheckStatement = connection.prepareStatement(emailCheckQuery);
            emailCheckStatement.setString(1, email);
            resultSet = emailCheckStatement.executeQuery();
            resultSet.next();
            int count = resultSet.getInt(1);

            if (count > 0) {
            //if exits
            String updateOtpQuery = "UPDATE student SET otp=? WHERE email=?";
            PreparedStatement updateOtpStatement = connection.prepareStatement(updateOtpQuery);
            updateOtpStatement.setString(1, otp);
            updateOtpStatement.setString(2, email);
            updateOtpStatement.executeUpdate();
            
            String retrieveUserQuery = "SELECT userid, password FROM student WHERE email=?";
            PreparedStatement retrieveUserStatement = connection.prepareStatement(retrieveUserQuery);
            retrieveUserStatement.setString(1, email);
            ResultSet userResult = retrieveUserStatement.executeQuery();
            if (userResult.next()) {
                String useridFromDB = userResult.getString("userid");
                String passwordFromDB = userResult.getString("password");
                
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
                // message.setText("Dear " + firstname + ",\n\nYour new OTP is: " + otp);
                message.setText("Dear " + firstname + ",\n\nThank you for registering. Your account details are:\nUser ID: " + useridFromDB + "\nPassword: " + passwordFromDB + "\nOTP: " + otp);

                Transport.send(message);

                session.setAttribute("email", email);
            
                String successMessage = "Email already Registered New OTP has sent to your email address.";
                out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js'></script>");
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Success',");
                out.println("  text: '" + successMessage + "',");
                out.println("}).then(function() { window.location.href = 'otp.jsp'; });");
                out.println("</script>");
            } else {
                // Handle the case if user details are not found in the database
                String errorMessage = "User details not found in the database. Please try again.";
                out.println("<h2>Error</h2>");
                out.println("<p>" + errorMessage + "</p>");
            
    
            
    }
            
            
                
                
            } else {
                // Email does not exist, proceed with insertion
                String sql = "INSERT INTO student (firstname, lastname, email, phone, college, year, image, imagename, password, userid,action,event,otp) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                statement = connection.prepareStatement(sql);

                statement.setString(1, firstname);
                statement.setString(2, lastname);
                statement.setString(3, email);
                statement.setString(4, phone);
                statement.setString(5, college);
                statement.setString(6, year);

                // Set the input stream (file) to the statement
                input = new FileInputStream(serverFilePath);
                statement.setBinaryStream(7, input);

                statement.setString(8, fileName);
                statement.setString(9, password);
                statement.setString(10, userid);
                statement.setString(11, "Pending");
                statement.setString(12, "Pending");
                statement.setString(13, otp);

                statement.executeUpdate();
                
                
                // Send SMS
            String senderid = "CODEBK";
            String username = "Codebook";
            String apikey = "56dbbdc9cea86b276f6c";
            String mobile = phone;
            String message = "Hello " + firstname + ", your OTP for account activation is " + otp + ". This message is generated from https://www.codebook.in server. Thank you";
            out.println(message);
            
           
            

            try {
                String data = URLEncoder.encode("username", "UTF-8") + "=" + URLEncoder.encode(username, "UTF-8");
                data += "&" + URLEncoder.encode("apikey", "UTF-8") + "=" + URLEncoder.encode(apikey, "UTF-8");
                data += "&" + URLEncoder.encode("mobile", "UTF-8") + "=" + URLEncoder.encode(mobile, "UTF-8");
                data += "&" + URLEncoder.encode("senderid", "UTF-8") + "=" + URLEncoder.encode(senderid, "UTF-8");
                data += "&" + URLEncoder.encode("message", "UTF-8") + "=" + URLEncoder.encode(message, "UTF-8");

                URL url = new URL("https://smslogin.co/v3/api.php");
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("POST");
                conn.setDoOutput(true);

                OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
                wr.write(data);
                wr.flush();

                BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
             //   StringBuilder response = new StringBuilder();
             StringBuilder responseBuilder = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    //response.append(line);
                     responseBuilder.append(line);
                }
                wr.close();
                reader.close();
                conn.disconnect();

                //out.println("SMS Sent Successfully: " + response.toString());
            } catch (Exception e) {
                e.printStackTrace();
                out.println("Error sending SMS");
            }
            

                // Send Email
           final String senderEmail = "projects@codebook.in";
            final String senderPassword = "frwqvhawrnsxetyk";

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.ssl.trust", "*");

            Session esession = Session.getInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(senderEmail, senderPassword);
                }
            });

            MimeMessage emailMessage = new MimeMessage(esession);
            emailMessage.setFrom(new InternetAddress(senderEmail));
            emailMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            emailMessage.setSubject("Registration Successful");
            emailMessage.setText("Dear " + firstname + ",\n\nThank you for registering. Your account details are:\nUser ID: " + userid + "\nPassword: " + password + "\nOTP: " + otp + "\nimage: " + image);

            Transport.send(emailMessage);
            session.setAttribute("email", email);

         String successMessageSMS = "Registration Successful. SMS has been sent to your registered mobile number.";
out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js'></script>");
out.println("<script>");
out.println("Swal.fire({");
out.println("  icon: 'success',");
out.println("  title: 'Success',");
out.println("  text: '" + successMessageSMS + "',");
out.println("});");
out.println("</script>");

String successMessageEmail = "Registration Successful. An Email  has been sent to your registered email address.";
out.println("<script>");
out.println("setTimeout(function() {");
out.println("  Swal.fire({");
out.println("    icon: 'success',");
out.println("    title: 'Success',");
out.println("    text: '" + successMessageEmail + "',");
out.println("  }).then(function() { window.location.href = 'otp.jsp'; });");
out.println("}, 3000);"); // 3000 milliseconds (3 seconds) delay before showing the second SweetAlert
out.println("</script>");
                

                // Close resources
                if (statement != null) {
                    statement.close();
                }
                if (emailCheckStatement != null) {
                    emailCheckStatement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
                if (connection != null) {
                    connection.close();
                }

                // Show success message using SweetAlert2
               /* out.println("<script>");
                out.println("Swal.fire('Success', 'Student registered successfully', 'success').then(function() { window.location.href = 'student-login.jsp'; });");
                
                out.println("</script>");
                out.println("</script>");*/
            }
        } catch (Exception e) {
            e.printStackTrace();
            String errorMessage = "An error occurred during student registration. Please try again.";
            out.println("<h2>Error</h2>");
            out.println("<p>" + errorMessage + "</p>");
            out.println("<p>Error message: " + e.getMessage() + "</p>");
        } finally {
            if (input != null) {
                input.close();
            }
        }
    }
%>
</body>
</html>
