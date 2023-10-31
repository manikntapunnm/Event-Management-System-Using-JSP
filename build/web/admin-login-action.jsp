<%-- 
    Document   : admin-login-action
    Created on : 27-Jul-2023, 12:33:09 pm
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
           String n = request.getParameter("username");
            String p = request.getParameter("password");
            out.println(n);
            out.println(p);
            
            Connection con = null;
            PreparedStatement ps = null;
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineevent","root","Durga@123");
                ps = con.prepareStatement("SELECT * FROM admin WHERE username=? AND password=?");
                ps.setString(1, n);
                ps.setString(2, p);
                ResultSet rs = ps.executeQuery();
                
                if (rs.next()) {
                    response.sendRedirect("admin-dashboard.jsp");
                } else {
                    response.sendRedirect("admin.jsp");
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


