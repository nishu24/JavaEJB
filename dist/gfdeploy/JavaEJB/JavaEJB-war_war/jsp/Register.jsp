<%-- 
    Document   : Register
    Created on : Apr 7, 2014, 6:42:07 PM
    Author     : Nisarg
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Reading Check box Data</title>
    </head>
    <body>
    <center>
        <h1>Reading Check box Data</h1>
        <form>
            <table width="100%" border="1" align="center">

                <tr bgcolor="#949494">
                    <th>Param Name</th><th>Param Value(s)</th>
                </tr>
                <%
                    Enumeration paramNames = request.getParameterNames();
                    Map<String, String[]> params = request.getParameterMap();
                    for (Map.Entry<String, String[]> entry : params.entrySet()) {

                        out.print("<tr><td>" + entry.getKey() + "</td>\n");
                        out.println("<td> " + entry.getValue()[0] + "</td></tr>\n");
                    }
                    Connection conn = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project", "root", "");

                    PreparedStatement psInsertRecord = null;
                    String sqlInsertRecord = null;
                    try {
                        sqlInsertRecord = "insert into user (user_name, first_name,last_name,sex,street,city,state,zip,email,password)"
                                + " values(?,?,?,?,?,?,?,?,?,?)";
                        psInsertRecord = conn.prepareStatement(sqlInsertRecord);
                        psInsertRecord.setString(1, params.get("uname")[0]);
                        psInsertRecord.setString(2, params.get("fname")[0]);
                        psInsertRecord.setString(3, params.get("lname")[0]);
                        psInsertRecord.setString(4, params.get("sex")[0]);
                        psInsertRecord.setString(5, params.get("street")[0]);
                        psInsertRecord.setString(6, params.get("city")[0]);
                        psInsertRecord.setString(7, params.get("state")[0]);
                        psInsertRecord.setString(8, params.get("zip")[0]);
                        psInsertRecord.setString(9, params.get("email")[0]);
                        psInsertRecord.setString(10, params.get("password")[0]);

                        psInsertRecord.executeUpdate();
                    } catch (Exception e) {
                %><h1>Something went wrong</h1><%//// On error it will send back to addRecord.jsp page
                    }
                    try {
                        if (psInsertRecord != null) {
                            psInsertRecord.close();
                        }
                        if (conn != null) {
                            conn.close();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>
        </form>
    </body>
</html>
