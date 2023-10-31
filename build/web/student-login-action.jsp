<%-- 
    Document   : student-login-action
    Created on : 29-Jul-2023, 1:42:23 am
    Author     : manikanta
--%>

<%--@page contentType="text/html" pageEncoding="UTF-8"%>

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
                ps = con.prepareStatement("SELECT * FROM student WHERE email=? AND password=?");
                ps.setString(1, email);
                ps.setString(2, password);
                ResultSet rs = ps.executeQuery();
                
                if (rs.next()) {
                    
                    request.getSession().setAttribute("loginSuccessMessage", "Login successfully.");
                    response.sendRedirect("student-dashboard.jsp");
                } else {
                    response.sendRedirect("student-login.jsp");
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
</html>--%>



<%-- 
    Document   : student-login-action
    Created on : 29-Jul-2023, 1:42:23 am
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
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineevent", "root", "Durga@123");
            ps = con.prepareStatement("SELECT * FROM student WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String emailv = rs.getString("email");
                session.setAttribute("email", emailv);

                String phone = rs.getString("phone");
                session.setAttribute("phone", phone);

                String college = rs.getString("college");
                session.setAttribute("college", college);

                String firstname = rs.getString("firstname");
                session.setAttribute("firstname", firstname);

                String event = rs.getString("event");
                session.setAttribute("event", event);
                /*
                String id = rs.getString("id");
                 session.setAttribute("id", id);*/

                String action = rs.getString("action");

                if ("RGUKT".equalsIgnoreCase(college)) {
                    // If college is "rgukt", update the action to "accepted" in the database
                    PreparedStatement updatePs = con.prepareStatement("UPDATE student SET action='Accepted' WHERE email=?");
                    updatePs.setString(1, email);
                    updatePs.executeUpdate();
                    updatePs.close();
                     action = "Accepted";
                }

                if ("Accepted".equalsIgnoreCase(action)) {
                String eventTitle = null;
    try {
        PreparedStatement titlePs = con.prepareStatement("SELECT title FROM events");
        ResultSet titleRs = titlePs.executeQuery();
        if (titleRs.next()) {
            eventTitle = titleRs.getString("title");
        }
        titleRs.close();
        titlePs.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    
    // Store the event title in the session
  //  session.setAttribute("eventTitle", eventTitle);
                
                    request.getSession().setAttribute("loginSuccessMessage", "Login successfully.");
                    response.sendRedirect("student-dashboard.jsp");
                } else {
                    // Redirect to a page that displays a message for users with pending action
                    request.getSession().setAttribute("loginPendingMessage", "Login Pending.");
                    response.sendRedirect("student-login.jsp");
                }
            } else {
                request.getSession().setAttribute("loginFailedMessage", "Login Failed.");
                response.sendRedirect("student-login.jsp");
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
