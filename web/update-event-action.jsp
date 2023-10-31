<%-- 
    Document   : update-event-action
    Created on : 28-Jul-2023, 6:06:21 pm
    Author     : manikanta
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.net.URLEncoder" %>

<!Doctype html>

<html>
    
    <head>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">
        
    </head>
    
    <body>
        
  
<%
    Connection con = null;
    Statement st = null;
    
    
    String title = request.getParameter("title");
    String  status= request.getParameter("status");
    String ming = request.getParameter("ming");
    String maxg = request.getParameter("maxg");
    String date = request.getParameter("date");
    String cost = request.getParameter("cost");
    String description = request.getParameter("des");
    String id = request.getParameter("id");
    


    
    try {
        String url = "jdbc:mysql://localhost:3306/onlineevent";
        String username = "root";
        String dbpassword = "Durga@123";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, username, dbpassword);
        st = con.createStatement();
        PreparedStatement ps = con.prepareStatement("update events set title=?, status=?, ming=?, maxg=?, date=?, cost=?, description=? where id=?");

        ps.setString(1, title);
        ps.setString(2, status);
        ps.setString(3, ming);
        ps.setString(4, maxg);
        ps.setString(5, date);
        ps.setString(6, cost);
        ps.setString(7, description);
         ps.setString(8, id);
        //ps.executeUpdate();
     
        
        
        
     
        // Retrieve the original data from the database using the id
        PreparedStatement psSelect = con.prepareStatement("SELECT * FROM events WHERE id=?");
        psSelect.setString(1, id);
        ResultSet rsOriginalData = psSelect.executeQuery();
        boolean anyFieldChanged = false;

        if (rsOriginalData.next()) {
            String originalTitle = rsOriginalData.getString("title");
            String originalStatus = rsOriginalData.getString("status");
            String originalMing = rsOriginalData.getString("ming");
            String originalMaxg = rsOriginalData.getString("maxg");
            String originalDate = rsOriginalData.getString("date");
            String originalCost = rsOriginalData.getString("cost");
            String originalDescription = rsOriginalData.getString("description");

            // Compare each field with the updated value
            if (!title.equals(originalTitle) || !status.equals(originalStatus) || !ming.equals(originalMing) ||
                !maxg.equals(originalMaxg) || !date.equals(originalDate) || !cost.equals(originalCost) ||
                !description.equals(originalDescription)) {
                anyFieldChanged = true;
            }
        }

        // Execute the update statement only if any field is changed
        int rowsUpdated = 0;
        if (anyFieldChanged) {
            rowsUpdated = ps.executeUpdate();
        }

        // Check if the update was successful (rowsUpdated > 0) and any field's value changed
        boolean dataChanged = (rowsUpdated > 0) && anyFieldChanged;

        if (dataChanged) {
            // Set a session attribute to store the update success message
            request.getSession().setAttribute("updateSuccessMessage", "Event details updated successfully.");
        }
  
   // request.getSession().setAttribute("updateSuccessMessage", "Event details updated successfully.");
    
        
        response.sendRedirect("manage-event.jsp");
        
     
        
      
        
        
        
        
        
    } catch (Exception e) {
        e.printStackTrace();
        String errorMessage = e.getMessage();

        // Display the error message using a <div> element
        %>
        <div style="color: red; font-size: 16px; margin: 10px;">
            <%= errorMessage %>
        </div>
        <%
       //response.sendRedirect("manage-event.jsp");
    } finally {
        // Close the resources in the reverse order of their creation
        if (st != null) {
            st.close();
        }
        if (con != null) {
            con.close();
        }
    }
%>
  </body>
</html>

