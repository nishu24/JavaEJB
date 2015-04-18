<%-- 
    Document   : checklogin
    Created on : April 22, 2015, 7:54:36 PM
    Author     : Nisarg
--%>


<%@page import="com.java.Static"%>
<%@page import="com.java.User"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <style>
            h2 {
                background: #FF9933;
                font-family: cursive;
                font-size: 120%;
                text-align: center;
                border-radius: 1em;
                width:30%;
                
            }
            h1 {
                background: #FF9933;
                text-align: center;
                border-radius: 1em;
                font-family: cursive;
                width:30%;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checking Login</title>
    </head>
    <body bgcolor="#FFFFCC">
        <%

            Map<String, String[]> params = request.getParameterMap();
            for (Map.Entry<String, String[]> entry : params.entrySet()) {
//
//                out.print("<tr><td>" + entry.getKey() + "</td>\n");
//                out.println("<td> " + entry.getValue()[0] + "</td></tr>\n");
            }
            Connection conn = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project", "root", "");

            PreparedStatement psSelectRecord = null;
            String sqlSelectRecord = null;
            try {
                sqlSelectRecord = "SELECT  * FROM user WHERE user_name=?";

                psSelectRecord = conn.prepareStatement(sqlSelectRecord);
                psSelectRecord.setString(1, params.get("username")[0]);
                ResultSet rs = psSelectRecord.executeQuery();
                //   if(entry.getValue()[0] == uname)
                int count = 0;
                User user = new User();
                while (rs.next()) {

                    count += 1;
                    String userName = rs.getString("user_name");
                    String password = rs.getString("password");

                    if (password != null & password.equals(params.get("password")[0])) {
                        user.setUserName(userName);
                        int id = rs.getInt("id");
                        user.setId(id);
                        
                        String firstname = rs.getString("first_name");
                        user.setFisrtName(firstname);

                        String lastname = rs.getString("last_name");
                        user.setLastName(lastname);

                        String sex = rs.getString("sex");
                        user.setSex(sex);

                        String state = rs.getString("state");
                        user.setState(state);

                        String street = rs.getString("street");
                        user.setStreet(street);

                        String city = rs.getString("city");
                        user.setCity(city);

                        String email = rs.getString("email");
                        user.setEmail(email);

                        String zip = rs.getString("zip");
                        user.setZip(zip);

                        Static.user = user;
        %>
    <marquee><h1>Hello User: <%= Static.user.getUserName()%> </h1> </marquee>
    <h2><a href="../index.html">Perform Some Calculations</a></h2>
    <a href="index.jsp"><img src="../Capture.JPG"  height="40" width="125"/></a>

    <%
    } else {
    %><h1>Please check password</h1> <%
            }
        }
        if (count == 0) {
    %><h1>Please check user name</h1> <%
        }
    } catch (Exception e) {
    %><h1>Something went wrong</h1><%
        }
        try {
            if (psSelectRecord != null) {
                psSelectRecord.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>   
</body>
</html>
