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

<!DOCTYPE html>
<html>
<head>
    <!-- Example using CDN link -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
try {
    // Database connection parameters
    String dburl = "jdbc:mysql://localhost:3306/onlineevent";
    String dbusername = "root";
    String dbpassword = "Durga@123";

    String firstname = "";
    String lastname = "";
    String email = "";
    String phone = "";
    String year = "";
    String serverFilePath = "";
    String fileName = "";

    // Check if the request contains multipart data
    if (ServletFileUpload.isMultipartContent(request)) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Set the maximum allowed file size (in bytes)
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                /*String originalFileName = new File(item.getName()).getName();
                String timeStamp = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
                String uniqueFileName = timeStamp + "_" + originalFileName;
                serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\EMS\\build\\web\\img\\students\\" + uniqueFileName;
                item.write(new File(serverFilePath));
                fileName = uniqueFileName;*/
                String originalFileName = new File(item.getName()).getName();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
String timeStamp = dateFormat.format(new Date());
String truncatedTimeStamp = timeStamp.substring(8, 13); // Extract 5 digits from the timestamp
String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\EMS\\build\\web\\img\\students\\" + uniqueFileName;
item.write(new File(serverFilePath));
fileName = uniqueFileName;
            } else {
                // Handle form fields
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                if (fieldName.equals("firstname")) {
                    firstname = fieldValue;
                } else if (fieldName.equals("lastname")) {
                    lastname = fieldValue;
                } else if (fieldName.equals("email")) {
                    email = fieldValue;
                } else if (fieldName.equals("phone")) {
                    phone = fieldValue;
                } else if (fieldName.equals("year")) {
                    year = fieldValue;
                }
            }
        }

        // Generate user ID, password, and OTP
        String prefix = "ST";
        int minUserId = 1;
        int maxUserId = 999;
        String characters1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
        String characters2 = "123456789";
        int passwordLength = 8;
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

        int randomUserId = random.nextInt(maxUserId) + minUserId;
        String userid = prefix + String.format("%03d", randomUserId);
        String password = passwordBuilder.toString();
        String otp = otpBuilder.toString();

        // Insert data into the database
        try (Connection connection = DriverManager.getConnection(dburl, dbusername, dbpassword)) {
            String sql = "INSERT INTO student (firstname, lastname, email, phone, college, year, image, imagename, password, userid, otp) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, firstname);
                statement.setString(2, lastname);
                statement.setString(3, email);
                statement.setString(4, phone);
                statement.setString(5, "RGUKT");
                statement.setString(6, year);
                FileInputStream input = new FileInputStream(serverFilePath);
                statement.setBinaryStream(7, input);
                statement.setString(8, fileName);
                statement.setString(9, password);
                statement.setString(10, userid);
                statement.setString(11, otp);
                statement.executeUpdate();

                // Send email
                final String senderEmail = "projects@codebook.in";
                final String senderPassword = "frwqvhawrnsxetyk";

                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.debug", "true");


                Session esession = Session.getInstance(props, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(senderEmail, senderPassword);
                    }
                });

                MimeMessage message = new MimeMessage(esession);
                message.setFrom(new InternetAddress(senderEmail));
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                message.setSubject("Registration Successful");
                message.setText("Dear " + firstname + ",\n\nThank you for registering. Your account details are:\nUser ID: " + userid + "\nPassword: " + password + "\nOTP:  " + otp);
                Transport.send(message);

                // Display success message
                String successMessage = "Registration Successful. An email has been sent to your registered email address.";
                out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js'></script>");
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'success',");
                out.println("  title: 'Success',");
                out.println("  text: '" + successMessage + "',");
                out.println("}).then(function() { window.location.href = 'manage-student.jsp'; });");
                out.println("</script>");
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<p>Error message: " + e.getMessage() + "</p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error message: " + e.getMessage() + "</p>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error message: " + e.getMessage() + "</p>");
        }
    }
} catch (FileUploadException e) {
    e.printStackTrace();
    out.println("<p>Error message: " + e.getMessage() + "</p>");
} catch (Exception e) {
    e.printStackTrace();
    out.println("<p>Error message: " + e.getMessage() + "</p>");
}
%>
</body>
</html>
