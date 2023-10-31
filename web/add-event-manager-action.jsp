<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*, java.util.List, org.apache.commons.fileupload.*,
    org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<%@ page import="java.util.Random" %>


<!DOCTYPE html>
<html>
<head>
    <!-- Example using CDN link -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
try {
    String firstname = "";
    String lastname = "";
    String email = "";
    String phone = "";
    String event = "";
    String image = "";
    String serverFilePath = "";
    String fileName = "";
    String randomPassword = "";

    if (request.getContentType() != null && request.getContentType().startsWith("multipart/form-data")) {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(5600456); // Adjust the size limit as needed
        
        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                String originalFileName = new File(item.getName()).getName();
                String timeStamp = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
                String uniqueFileName = timeStamp + "_" + originalFileName;

                serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\EMS\\build\\web\\img\\teachers\\" + uniqueFileName;
                item.write(new File(serverFilePath));

                fileName = uniqueFileName;
            } else {
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
                } else if (fieldName.equals("event")) {
                    event = fieldValue;
                }
            }
        }

        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        //int passwordLength = 5;
        StringBuilder passwordBuilder = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            int index = random.nextInt(characters.length());
            passwordBuilder.append(characters.charAt(index));
        }
        randomPassword = passwordBuilder.toString();

        
          String otpNumbers = "0123456789";
        StringBuilder otpBuilder = new StringBuilder();
        for (int i = 0; i < 4; i++) {
            int index = random.nextInt(otpNumbers.length());
            otpBuilder.append(otpNumbers.charAt(index));
        }
        String otp = otpBuilder.toString();
        
        
        // Create a connection to the database
        String url = "jdbc:mysql://localhost:3306/onlineevent";
        String username = "root";
        String dbpassword = "Durga@123";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url, username, dbpassword);

        String sql = "INSERT INTO eventman (firstname, lastname, email, phone, event, image, imagename, priority, password,otp) VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setString(1, firstname);
        statement.setString(2, lastname);
        statement.setString(3, email);
        statement.setString(4, phone);
        statement.setString(5, event);
        FileInputStream input = new FileInputStream(serverFilePath);
        statement.setBinaryStream(6, input);
        statement.setString(7, fileName);
        statement.setString(8, "Pending");
        statement.setString(9, randomPassword);
         statement.setString(10, otp);

        statement.executeUpdate();

        // Display success message
        String successMessage = "Event Manager Added.";
%>
        <script>
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: '<%= successMessage %>'
        }).then(function() {
            window.location.href = 'manage-event-manager.jsp';
        });
        </script>
<%
    } // End of multipart/form-data check
} catch (Exception e) {
    e.printStackTrace();
    // Log error here for better debugging
%>
    <p>Error: <%= e.getMessage() %></p>
<%
} // End of try-catch
%>
</body>
</html>
