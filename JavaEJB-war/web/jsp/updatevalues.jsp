<%-- 
    Document   : updatevalues
    Created on : Nov 30, 2014, 7:48:41 PM
    Author     : Nisarg
--%>
<%@page import="com.java.Static"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Values</title>
        <style>
            form{
                border: #FF9933 thick outset;
            }
            table{
                width: 100%;
            }
        </style>
    </head>
    <body>
        <form action="update.jsp" method=post>            
            <table cellpadding="2" width="90%" bgcolor="#FFCC66" align="center"
                   cellspacing="2">
                <tr>
                    <td colspan=2>
                <center><b id="text1"><label>Update Your Details</label></b></center>
                </td>
                </tr>
                <tr>                  
                    <td><label>UserName</label></td>
                    <td><label><%=Static.user.getUserName()%></label></td>
                </tr>
                <tr>
                    <td><label>First Name</label></td>
                    <td><input type=text name="fname" id="textname" size="35" value=<%=Static.user.getFisrtName()%> required></td>
                </tr>

                <tr>
                    <td><label>Last Name</label></td>
                    <td><input type="text" name="lname" id="fathername" value=<%=Static.user.getLastName()%>
                               size="35" required></td>
                </tr>
                <tr>
                    <td><label>Street Address</label></td>
                    <td><input type="text" name="street" id="paddress" size="35" value=<%=Static.user.getStreet()%> required></td>
                </tr>               
                <tr>
                    <td><label>Sex</label></td>

                    <td>
                        <input type="radio" name="sex" value="m" <% if (Static.user.getSex().equals("m")) {
                                out.print("checked");
                            }   %> >Male
                        <input type="radio" name="sex" value="f" <% if (Static.user.getSex().equals("f")) {
                                out.print("checked");
                            }%> >>Female</td>
                </tr>

                <tr>
                    <td><label>City</label></td>
                    <td><input type="text" name="city" id="city" size="35" value=<%=Static.user.getCity()%> required></td>                  
                </tr>               
                <tr>
                    <td><label>State</label></td>
                    <td><input type="text" name="state" id="pincode" value=<%=Static.user.getState()%> size="35"></td>
                </tr>
                <tr>
                    <td><label>PinCode</label></td>
                    <td><input type="text" name="pincode" id="pincode" value=<%=Static.user.getZip()%> size="35"></td>

                </tr>
                <tr>
                    <td><label>EmailId</label></td>
                    <td><label><%=Static.user.getEmail()%></label></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input type="password" name="password" id="password" size="35"></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2"><input  type="submit" value="Submit Form" /><input type="reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
