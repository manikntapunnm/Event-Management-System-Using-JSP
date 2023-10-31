<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    Connection con = null;
    PreparedStatement ps = null;
    try {
        String url = "jdbc:mysql://localhost:3306/onlineevent";
        String username = "root";
        String dbpassword = "Durga@123";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, username, dbpassword);
        
        
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String college = request.getParameter("college");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String year = request.getParameter("year");
        String password = request.getParameter("password");
        
        
        
        String query = "UPDATE student SET firstname=?, lastname=?, college=?, year=?, phone=?, password=? WHERE email=?";
        ps = con.prepareStatement(query);
        
        ps.setString(1, firstname);
        ps.setString(2, lastname);
        ps.setString(3, college);
        ps.setString(4, phone);
        ps.setString(5, year);
        ps.setString(6, password);
        ps.setString(7, email);
        
        int rowsAffected = ps.executeUpdate();
        if (rowsAffected > 0) {
            request.getSession().setAttribute("updateSuccessMessage", "Details updated successfully.");
            response.sendRedirect("myprofile.jsp");
        } else {
            out.println("<script>alert('Failed to update data');</script>");
            response.setHeader("Refresh", "0; URL=myprofile.jsp");
        }
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
        e.printStackTrace();
    } finally {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
