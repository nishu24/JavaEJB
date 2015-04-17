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
        <title>JSP Page</title>
    </head>
    <body>
        <form action="checklogin.jsp" method=post>
            <div style=" height: 298px; background-color: #dfeffc; border: 1px double #00a1d2">
                <h1 class="shadow">Lambton College Student Login</h1>
                <fieldset>
                    <legend for="username">Student Details </legend>
                    <label>Enter Username</label>
                    <input  type="text" name="username" id="txtUserName" placeholder="Enter Username"  required /><br>
                    <label for="password">Enter Password</label>
                    <input  type="password" name="password" id="txtPassword" placeholder="Enter password" value="" class="shadow" required /><br><br>
                    <input  type="submit" value="Login" id="center" class="shadow"  /><br>
                    <label id="nu">New User?</label> 
                    <a href="CRUD.jsp"><input value="Register" type="button" id="nub" class="shadow"></a>
                    <p class="login-help" align="center"><a href="index.html">Forget password?</a></p>
                </fieldset>
            </div>
        </form>
    </body>
</html>
