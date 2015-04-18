<%@page import="com.java.Static"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Create Read Update & Delete Page</title>
        <link rel="shortcut icon" href="../favicon.ico" /> 
        <link rel="stylesheet" type="text/css" href="demo.css" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link href='http://fonts.googleapis.com/css?family=Alegreya+SC:700,400italic' rel='stylesheet' type='text/css' />
        <style>  
            #img{ 
                margin-bottom: 16px;
                margin-left: 30px;
                background-color: #3366FF;
                color: white;
                height: 30px;
                width:90px;
            }
            #side{
                font-family: cursive;
                font-size: 200%;
            }   
            #large{
                margin-left: 40px;               
            }
            body{
                background-color: #FFCC66;
            }
        </style>
    </head>
    <body>
        <div class="container">         
            <div class="codrops-top">               
            </div>
            <header>               
                <nav class="codrops-demos">                   
                </nav>
            </header>            
            <h2 id="large">Hi <%= Static.user.getUserName()%> !!</h2>                                 
            <ul class="mh-menu" type="none">  
                <h3>Choose your Action</h3>
                <li>
                    <form action="updatevalues.jsp" method="post">
                        <input id="img" type="submit" name="update" value="Update Data" /><span id="side"></span>
                    </form>
                </li>
                <li>
                    <form action="delete.jsp" method="post">
<!--                        <input type="text" name ="username" value=<%= Static.user.getUserName()%> />-->
                        <input id="img" type="submit" name="delete" value="Delete Data"/><span id="side"></span>
                    </form>
                </li>
                        <li><a href="index.jsp"><img src="../Capture.JPG"  height="50" width="145"/></a></li>
            </ul>
        </div>        
    </body>
</html>
