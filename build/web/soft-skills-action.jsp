<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%
    // Get the "email" attribute from the session
    String email = (String) request.getSession().getAttribute("email");

    Connection con = null;
    PreparedStatement ps = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineevent", "root", "Durga@123");
        ps = con.prepareStatement("UPDATE student SET event = ? WHERE email = ?");
        ps.setString(1, "SoftSkills");
        ps.setString(2, email);

        int rowsAffected = ps.executeUpdate();

        // Update successful or not, redirect to "mus-night.jsp"
        request.getSession().setAttribute("loginSuccessMessage", "Applied successfully.");
        response.sendRedirect("soft-skills.jsp");
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
        String errorMessage = e.getMessage();
        // Handle SQL or ClassNotFound exception
        // response.sendRedirect("error.jsp");
    } finally {
        try {
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
%>
