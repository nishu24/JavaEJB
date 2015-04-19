<%-- 
    Document   : delete
    Created on : Apr 02, 2015, 7:18:26 PM
    Author     : Nisarg
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <style>
           h1{
               text-shadow: 2px 2px #d38439;
               font-family: cursive;
               font-size: 130%;
           }
           #button{
               background: #66CCFF;
               font-family: cursive;
               font-weight: bold;
           }
           </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Deleted</title>
    </head>
    <body>
        <h1>Your Data is Deleted Successfully</h1>
        <a href="index.jsp"><input type="button" value="Logout"></a>
        <%
            Enumeration paramNames = request.getParameterNames();
            Map<String, String[]> params = request.getParameterMap();
            String userName = request.getParameter("username");        
            try {
                Connection conn = null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project", "root", "");
                PreparedStatement psSelectRecord = null;
                String sqlSelectRecord = null;
                sqlSelectRecord = "DELETE FROM user WHERE user_name=?";
                psSelectRecord = conn.prepareStatement(sqlSelectRecord);
                psSelectRecord.setString(1, userName);                
                psSelectRecord.executeUpdate();                
                conn.close();
            } catch (Exception e) {
                System.out.print(e.getMessage());
            }
        %>
    </body>
</html>
