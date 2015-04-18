<%-- 
    Document   : LOGIN
    Created on : Apr 9, 2015, 9:37:13 PM
    Author     : Nisarg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            body{
                background-color: #FFCC66;
            }
            h2{
                text-align: center;
                text-shadow: 1.5px 1.5px #FFCC99;
                background-image: url("../canvas.jpg");                
                border: 3px double black;
            }
            div{
                background-image: url("../canvas.jpg");                
            }
        </style>
    </head>
    <body>
        <form action="checklogin.jsp" method=post>
            <h2>Welcome To CPD-4414 Java Project</h2>
            <div style=" height: 298px; background-color: #dfeffc; border: 3px double black; font-size: large; font-weight: bold;">                                
                <fieldset>
                    <legend for="username">Login Details</legend>
                    <label>Enter Username</label>
                    <input  type="text" name="username" id="txtUserName" placeholder="Enter Username"  required /><br><br>
                    <label for="password">Enter Password</label>
                    <input  type="password" name="password" id="txtPassword" placeholder="Enter password" value="" class="shadow" required /><br><br>
                    <input  style="margin-left: 9.5em; width: 12%;" type="submit" value="Login" id="center" class="shadow" /><br><br>
                    <label id="nu">New User?</label> 
                    <a href="CRUD.jsp"><input value="Register" style="margin-left: 3em; width: 12%;" type="button" id="nub" class="shadow"></a>
                    <p class="login-help" align="center"><a href="index.jsp">Forget password?</a></p>
                </fieldset>
            </div>
        </form>
    </body>
</html>
