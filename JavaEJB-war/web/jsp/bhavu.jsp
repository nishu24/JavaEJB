<%@page import="com.java.Static"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Bhavsar Document</title>
        <link rel="shortcut icon" href="../favicon.ico" /> 
        <link rel="stylesheet" type="text/css" href="demo.css" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link href='http://fonts.googleapis.com/css?family=Alegreya+SC:700,400italic' rel='stylesheet' type='text/css' />
        <style>
            #button{
                background-color: #3a93d2;
                height:120px;
                width:130px;
                margin-bottom: 3em;
                border-radius: 1em 1em;
                background-image: url(images/delete_1.png);
            }
            #edit{
                background-color: #3a93d2;
                height:120px;
                width:130px;
                margin-bottom: 3em;
                border-radius: 1em 1em;
                background-image: url(images/document_edit.png);
            }
            #side{
                font-family: cursive;
                font-size: 200%;
            }
            #large{
                font-size: 310%;
                text-transform: uppercase;
                font-family: cursive;
                text-shadow: 2px 2px #ddd;
            }
        </style>
    </head>

    <body>

        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                <!--                <a href="http://nisargpanchal.blogspot.in/" target="_blank">Illustrations by Nisarg Pancahl</a>
                                                <a href="http://www.gtu.ac.in/results.asp" target="_blank">GTU Results</a>
                                <a href="http://www.alphainfoways.com/" target="_blank">Training Center</a>
                                <a href="ElasticSlideshow/Myelastic.html" target="_blank">Other Galleries</a>
                                <a href="http://www.santabanta.com/wallpapers/bollywood-moview/3/" target="_blank">Wallpapers</a>
                                <a href="http://www.jagranjosh.com/current-affairs-person-in-news-1283839908-1" target="_blank">Latest News</a>
                                <span class="right">
                                    <a href="http://www.google.co.in/webhp?source=search_app&gws_rd=cr" target="_blank">
                                        <strong>Back to the Google search</strong>
                                    </a>
                                </span>
                                <div class="clr"></div>-->
            </div><!--/ Codrops top bar -->
            <header>
                <h1><span>Lambton College</span>Editing Student Details</h1>
                <nav class="codrops-demos">
                    <!--					<a class="current" href="bhavu.html">View 1</a>
                                                            <a href="index2.html">View 2</a>
                                                            <a href="index3.html">View 3</a>-->
                </nav>
            </header>
            
           <h2 id="large">hi <%= Static.user.getUserName()%> !!</h2> 
                
                
            <ul class="mh-menu">
                <!--				<li><a href="#"><span>Choose Action</span> <span>Edit</span></a><img src="edit.jpg" alt="image01"/></li>-->

                <!--				<li><a href="#"><span>Choose Action</span> <span>Update</span></a><img src="update.jpg" alt="image02"/></li>-->
                <li>
                    <form action="updatevalues.jsp" method="post">
                        <input id="edit" type="submit" name="update" value=" "/><span id="side"><-- Update</span>
                        
                    </form>
                </li>
                <li>
                    <form action="delete.jsp" method="post">
<!--                        <input type="text" name ="username" value=<%= Static.user.getUserName()%> />-->
                         <input id="button" type="submit" name="delete" value=" "/><span id="side"><-- Delete</span>

                    </form>

                </li>
                         <li><a href="index.jsp"><span>Choose Action</span> <span>Logout</span></a><img src="" alt="Click There for Logout"/></li>

            </ul>
        </div>
        <!--<center><button type="button" name="Reference"><strong><a href="myflickr.html" target="_blank">Other Referrences </a></strong></button></center>        -->

    </body>
</html>
