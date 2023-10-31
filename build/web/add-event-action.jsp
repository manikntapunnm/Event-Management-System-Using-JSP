<%-- 
    Document   : add-event-action
    Created on : 27-Jul-2023, 2:37:34 pm
    Author     : manikanta


<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%@ page import="java.sql.*" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.FileInputStream" %>

<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.Calendar" %>
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
<!DOCTYPE html>
<html>
<head>
    <!-- Example using CDN link -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    String title = request.getParameter("title");
    String status = request.getParameter("status");
    String ming = request.getParameter("ming");
    String maxg = request.getParameter("maxg");
    String date = request.getParameter("date");
    String cost = request.getParameter("cost");
    String description = request.getParameter("des");
    String image = request.getParameter("image");
    
    

    


 
    Connection connection = null;
        PreparedStatement statement = null;
       // ResultSet resultSet=null;
        FileInputStream input=null;

        // JDBC connection variables
        String url = "jdbc:mysql://localhost:3306/onlineevent";
        String username = "root";
        String dbpassword = "Durga@123";
        // JDBC objects
       

        try {
            // Create a connection to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, dbpassword);
            input=new FileInputStream("C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\EMS\\build\\web\\img\\"+image);
            String sql = "INSERT INTO events (title, status, ming, maxg, date, cost, description,image, imagename) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            statement = connection.prepareStatement(sql);
         

            statement.setString(1, title);
            statement.setString(2, status);
            statement.setString(3, ming);
            statement.setString(4, maxg);
            statement.setString(5, date);
            statement.setString(6, cost);
            statement.setString(7, description);
            statement.setBlob(8, input);
            statement.setString(9, image);


            // Execute the query
            statement.executeUpdate();

            // Display success message
            String successMessage = "Registration Successful.";
            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js'></script>");
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'success',");
            out.println("  title: 'Success',");
            out.println("  text: '" + successMessage + "',");
            out.println("}).then(function() { window.location.href = 'manage-event.jsp'; });");
            out.println("</script>");

        } catch (ClassNotFoundException | SQLException | MessagingException e) {
            e.printStackTrace();
            // Display error message
            String errorMessage = "An error occurred during employee registration. Please try again.";
            out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js'></script>");
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("  icon: 'error',");
            out.println("  title: 'Error',");
            out.println("  text: '" + errorMessage + "',");
            out.println("}).then(function() { window.location.href = 'add-event.jsp'; });");
            out.println("</script>");

        } finally {
            // Close resources
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

%>


</body>
</html>

--%>

<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.io.*, java.sql.*, java.util.List, org.apache.commons.fileupload.*,
    org.apache.commons.fileupload.disk.*,
    org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Example using CDN link -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
try {
    String title = "";
    String status = "";
    String ming = "";
    String maxg = "";
    String date = "";
    String cost = "";
    String description = "";
    String serverFilePath = "";
    String fileName = "";

    // Check if the form was submitted as a file upload
    if (request.getContentType() != null && request.getContentType().startsWith("multipart/form-data")) {
        // Create a factory for disk-based file items
        FileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Set the maximum allowed file size (in bytes)
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        try {
            // Parse the request and get a list of FileItems
            List<FileItem> items = upload.parseRequest(request);

            // Process the uploaded items
            for (FileItem item : items) {
                // Check if the item is a file
                if (!item.isFormField()) {
                    // This is a file item, process it as required (file upload logic)

                    // Get the original file name and store it in a variable
                    String originalFileName = new File(item.getName()).getName();

                    // Generate a unique file name using timestamp and original file name
                    String timeStamp = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
                    String uniqueFileName = timeStamp + "_" + originalFileName;

                    // Save the file to the server
                    serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\EMS\\build\\web\\img\\" + uniqueFileName;
                    item.write(new File(serverFilePath));

                    // Set the unique file name in the variable for database insertion
                    fileName = uniqueFileName;
                } else {
                    // This is a form field, process it as required
                    String fieldName = item.getFieldName();
                    String fieldValue = item.getString();
                    if (fieldName.equals("title")) {
                        title = fieldValue;
                    } else if (fieldName.equals("status")) {
                        status = fieldValue;
                    } else if (fieldName.equals("ming")) {
                        ming = fieldValue;
                    } else if (fieldName.equals("maxg")) {
                        maxg = fieldValue;
                    } else if (fieldName.equals("date")) {
                        date = fieldValue;
                    } else if (fieldName.equals("cost")) {
                        cost = fieldValue;
                    } else if (fieldName.equals("description")) {
                        description = fieldValue;
                    }
                }
            }

            Connection connection = null;
            PreparedStatement statement = null;
            FileInputStream input = null;

            // JDBC connection variables
            String url = "jdbc:mysql://localhost:3306/onlineevent";
            String username = "root";
            String dbpassword = "Durga@123";

            try {
                // Create a connection to the database
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(url, username, dbpassword);
                input = new FileInputStream(serverFilePath); // Use the server file path

                String sql = "INSERT INTO events (title, status, ming, maxg, date, cost, description, image, imagename) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                statement = connection.prepareStatement(sql);

                statement.setString(1, title);
                statement.setString(2, status);
                statement.setString(3, ming);
                statement.setString(4, maxg);
                statement.setString(5, date);
                statement.setString(6, cost);
                statement.setString(7, description);
                statement.setBlob(8, input);
                statement.setString(9, fileName);

                // Execute the query
                statement.executeUpdate();

                // Display success message
                request.getSession().setAttribute("SuccessMessage", "Event Added successfully.");
                response.sendRedirect("manage-event.jsp");

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                // Display error message
                String errorMessage = "An error occurred during event registration. Please try again.";
                out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js'></script>");
                out.println("<script>");
                out.println("Swal.fire({");
                out.println("  icon: 'error',");
                out.println("  title: 'Error',");
                out.println("  text: '" + errorMessage + "',");
                out.println("}).then(function() { window.location.href = 'add-event.jsp'; });");
                out.println("</script>");

            } finally {
                // Close resources
                if (statement != null) {
                    try {
                        statement.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (input != null) {
                    try {
                        input.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
</body>
</html>
