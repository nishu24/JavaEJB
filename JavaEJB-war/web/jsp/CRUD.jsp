<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 5-April-2015, 1:42:54 PM
    Author     : nisarg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <style>
            #text{
                text-shadow: 2px 2px #719dab;
                font-family: cursive;
            }
            #text1{
                text-shadow: 2px 2px wheat;
                font-family: cursive;
                font-size: 120%;
            }
            input{
                margin-left: 4em;
                background: threedlightshadow;             
            }
            label{
                margin-left: 5em;
                font-family:cursive;
            }
            table {
                box-shadow: 4px 2px 2px 4px #719dab;

            }
        </style>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script>
            $(function() {
            $("#dob").datepicker({
            inline: true
            });
            }
        </script>

        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <script type="text/javascript" src="validate.js"></script>
        <title>Adding Details</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

        <form action="Register.jsp" method=post>
            <h1 id="text" align="center">Lambton College</h1>
            <h1 id="text" align="center">Student Data Filling</h1>

            <label align="right"></label>
            <table cellpadding="2" width="90%" bgcolor="#F6CECE" align="center"
                   cellspacing="2">

                <tr>
                    <td colspan=2>
                <center><b id="text1"><label>Add Your Details</label></b></center>
                </td>
                </tr>
                <tr>
                    <td><label>UserName</label></td>
                    <td><input type=text name="uname" id="textname" size="35" required></td>
                </tr>
                <tr>
                    <td><label>First Name</label></td>
                    <td><input type=text name="fname" id="textname1" size="35" required></td>
                </tr>

                <tr>
                    <td><label>Last Name</label></td>
                    <td><input type="text" name="lname" id="fathername"
                               size="35" required></td>
                </tr>
                <tr>
                    <td><label>Street Address</label></td>
                    <td><input type="text" name="street" id="paddress" size="35" required></td>
                </tr>               
                <tr>
                    <td><label>Sex</label></td>
                    <td><input type="radio" name="sex" value="m" >Male
                        <input type="radio" name="sex" value="f" >Female</td>
                </tr>

                <tr>
                    <td><label>City</label></td>
                    <td><input type="text" name="city" id="city" size="35" required></td>                  
                </tr>               
                <tr>
                    <td><label>State</label></td>
                    <td><input type="text" name="state" id="state" size="35"></td>
                </tr>
                <tr>
                    <td><label>PinCode</label></td>
                    <td><input type="text" name="zip" id="pincode" size="35"></td>

                </tr>
                <tr>
                    <td><label>EmailId</label></td>
                    <td><input type="text" name="email" id="emailid" size="35"></td>
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

