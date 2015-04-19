<%-- 
    Document   : delete
    Created on : Apr 10, 2015, 7:22:26 PM
    Author     : Nisarg
--%>

<%@page import="com.java.Static"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Updated page</title>
        <style>
            #nub{
                margin-left: 22em;
                margin-top:2em;
                background-color: #FFCC66;
            }
            #large{
                margin-top: 1em;
                text-align: center;
            }
            body{
                background-image: url("../images/canvas.jpg");
                height: 400px;
            }
        </style>
    </head>
    <body>
        <h2 id="large">Update successful Mr. <%= Static.user.getUserName()%> !!</h2>
        <a href="index.jsp"><input value="Back to login" type="button" id="nub" class="shadow"></a><br>
            <%
                Enumeration paramNames = request.getParameterNames();
                Map<String, String[]> params = request.getParameterMap();
    
                String firstName = request.getParameter("fname");
                String lastName = request.getParameter("lname");
                String sex = request.getParameter("sex");
                String street = request.getParameter("street");
                String city = request.getParameter("city");
                String state = request.getParameter("state");
                String zip = request.getParameter("pincode");
                String password = request.getParameter("password");

                try {
                    Connection conn = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project", "root", "");

                    PreparedStatement psSelectRecord = null;
                    String sqlSelectRecord = null;
    //                String updateSQL = "UPDATE user SET (first_name=%s,last_name=%s,sex=%s,street=%s,city=%s,state=%s,zip=%s,password=%s) WHERE id = ?";
                    sqlSelectRecord = "UPDATE user SET first_name=?,last_name=?,sex=?,street=?,city=?,state=?,zip=?,password=? WHERE id = ?";

                    psSelectRecord = conn.prepareStatement(sqlSelectRecord);
                    psSelectRecord.setString(1, firstName);
                    psSelectRecord.setString(2, lastName);
                    psSelectRecord.setString(3, sex);
                    psSelectRecord.setString(4, street);
                    psSelectRecord.setString(5, city);
                    psSelectRecord.setString(6, state);
                    psSelectRecord.setString(7, zip);
                    psSelectRecord.setString(8, password);
                    psSelectRecord.setInt(9, Static.user.getId());

                    psSelectRecord.executeUpdate();

                    conn.close();
                } catch (Exception e) {
            %> <h1>Update failed</h1><%
                            System.out.print(e.getMessage());
                        }
        %>

    </body>
</html>
