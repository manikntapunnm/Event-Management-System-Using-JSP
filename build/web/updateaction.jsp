<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>

<%
    Connection con = null;
    PreparedStatement ps = null;

    try {
        String url = "jdbc:mysql://localhost:3306/onlineevent";
        String username = "root";
        String dbpassword = "Durga@123";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, username, dbpassword);

        // Get the leave ID and action values from the request parameters
        int id = Integer.parseInt(request.getParameter("id"));
        String priority = request.getParameter("priority");

        // Update the action in the database based on the ID
        String updateQuery = "UPDATE eventman SET priority = ? WHERE id = ?";
        ps = con.prepareStatement(updateQuery);
        ps.setString(1, priority);
        ps.setInt(2, id);
        ps.executeUpdate();
        
        
        
        
       /*  // Set session attributes for the alert message and type
        String alertMessage = "Leave request has been " + action.toLowerCase() + "!";
        String alertType = (action.equals("Accepted")) ? "success" : "error";
        request.getSession().setAttribute("alertMessage", alertMessage);
        request.getSession().setAttribute("alertType", alertType);
        
        
        */
        
        
        
        

        // Redirect back to the original page
        response.sendRedirect("manage-event-manager.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
        // Handle the SQL exception
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        // Handle the class not found exception
    } finally {
        // Close the JDBC objects
        try {
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
