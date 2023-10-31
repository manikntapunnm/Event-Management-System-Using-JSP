<%-- 
    Document   : event-mag-action
    Created on : 28-Jul-2023, 4:44:21 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Action</title>
    </head>
    <body>
        <%
           String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            
            Connection con = null;
            PreparedStatement ps = null;
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineevent","root","Durga@123");
                ps = con.prepareStatement("SELECT * FROM eventman WHERE email=? AND password=?");
                ps.setString(1, email);
                ps.setString(2, password);
                ResultSet rs = ps.executeQuery();
                
                if (rs.next()) {
                
                 String event = rs.getString("event");
        request.getSession().setAttribute("event", event);
                    
                    request.getSession().setAttribute("loginSuccessMessage", "Login successfully.");
                    response.sendRedirect("eventman-dashboard.jsp");
                } else {
                    response.sendRedirect("event-mag.jsp");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                //response.sendRedirect("error.jsp");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                //response.sendRedirect("error.jsp");
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
    </body>
</html>



