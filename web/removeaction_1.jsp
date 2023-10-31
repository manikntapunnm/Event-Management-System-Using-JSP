<%-- 
    Document   : removeaction
    Created on : 28-Jul-2023, 2:35:36 pm
    Author     : manikanta

w/o alert  confirmation

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    Connection con = null;
    Statement st = null;

    String id = request.getParameter("id");
    
    try {
        String url = "jdbc:mysql://localhost:3306/onlineevent";
        String username = "root";
        String dbpassword = "Durga@123";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, username, dbpassword);
        st = con.createStatement();
        
        int rowsAffected = st.executeUpdate("DELETE FROM student WHERE id='" + id + "'");
        
        if (rowsAffected > 0) {
        
        request.getSession().setAttribute("removeSuccessMessage", " ID removed successfully.");
            response.sendRedirect("manage-student.jsp");
        } else {
            response.sendRedirect("manage-student.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("");
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
--%>

<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    
    try {
        String url = "jdbc:mysql://localhost:3306/onlineevent";
        String username = "root";
        String dbpassword = "Durga@123";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, dbpassword);
        Statement st = con.createStatement();
        
        int rowsAffected = st.executeUpdate("DELETE FROM events WHERE id='" + id + "'");
        
        if (rowsAffected > 0) {
            request.getSession().setAttribute("removeSuccessMessage", "ID removed successfully.");
        } else {
            request.getSession().setAttribute("removeSuccessMessage", "Failed to remove ID.");
        }
        response.sendRedirect("manage-event.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("");
    }
%>
