<%-- 
    Document   : index
    Created on : 11 Jun, 2022, 9:48:52 PM
    Author     : Beast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Online Food Delivery</title>
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="LandingPage/css/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="icon" type="image/png" sizes="16x16" href="LandingPage/favicon-16x16.png">
    </head>
    <body>
        <div id="overlay"></div>
        <div id="sidebar">
            <div id="sidebar-content">
                <a href="" class="margin-bottom" id="close-sidebar"><i class="far fa-window-close fa-3x white"></i></a>
                <div id="sidebar-login" class="display-flex-row">
                    <div>
                        <p>Login</p>
                        <a href="signup.jsp">or create an account</a>
                    </div>  
                    <img src="LandingPage/img/img-9.webp" alt="">
                </div>
                <form action="userlog" method="post" id="login-form">
                    <input type="text" name="phone" id="phone-no" placeholder="Phone Number">
                    <input type="password" name="pass" id="phone-no" placeholder="Password">
                    <input type="submit" value="Login" id="login-submit">
                </form>
            </div>
        </div>
        <%
            if (request.getParameter("success") != null) {%>
        <script>alert('User Registration Completed');</script>  
        <%}
        %>
        <%
            if (request.getParameter("phone") != null) {%>
        <script>alert('Phone Number Already Exist');</script>  
        <%}
        %>
        <%
            if (request.getParameter("not") != null) {%>
        <script>alert('Invalid User Credentials');</script>  
        <%}
        %>
    <center><h1 style="font-size: 40px; color: orange">Online Food Ordering System</h1></center>
            <div class="display-flex-row" style="padding-left:  350px">
                <div id="header-content-1" >
                    <div  class="display-flex-row margin-bottom ">
                       
                        <div id="log-sign" style="">
                            <a href="#" id="login">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;
                           <a href="signup.jsp" id="sign-up">Sign up</a>
                        </div>
                    </div>    
                    <h1 id="topic">Hey There !!!</h1> 
                    <h2>Order food from favourite restaurants near you</h2> 
                    <div id="location" style="width: 400px">
                        <input type="submit" value="Find Foods" id="find-food">
                    </div>
                    <h3>Popular Cities in India</h3>
                    <div id="cities">
                        <ul>
                            <li><a href="">Ahmedabad </a></li>
                            <li><a href="">Chennai</a></li>
                            <li><a href="">Banglore</a></li>
                            <li><a href="">Delhi</a></li>
                            <li><a href="">Gurgaon</a></li>
                            <li><a href="">Hyderabad</a></li>
                            <li><a href="">Kolkata</a></li>
                            <li><a href="">Mumbai</a></li>
                            <li><a href="">Pune</a></li>
                            <li><a href="">&many more</a></li>
                        </ul>
                    </div>
                </div>  
                <div id="header-content-2"></div>
            </div>
        </header>
        <section id="section-1">
            <div class="container">
                <div id="section-1-content" class="display-flex-row">
                    <div class="section-1-item">
                        <img src="LandingPage/img/img-1.webp" class="margin-bottom"  alt="No minimum order" style="height:220px;">
                        <h3>No Minimum order</h3>
                        <p>Order in for yourself or for the group, with no restrictions on order value</p>
                    </div>
                    <div class="section-1-item">
                        <img src="LandingPage/img/img-2.webp" class="margin-bottom" style="height:220px;" alt="Live Order Tracking">
                        <h3>Live Order Tracking</h3>
                        <p>Know where your order is at all times, from the restaurant to your doorstep</p>
                    </div>
                    <div class="section-1-item">
                        <img src="LandingPage/img/img-3.webp" class="margin-bottom" style="height:220px;" alt="Lightning_fast Delivery">
                        <h3>Lightning-Fast Delivery</h3>
                        <p>Experience superfast delivery for food delivered fresh & on time</p>
                    </div>
                </div>  
            </div>  
        </section>
        <section id="section-3" class="bg-1">
            <div class="container">
                <div id="section-3-content">
                    <div id="section-3-item-1" class="display-flex-row">
                        <div id="item-1" class="item">
                            <h3 class="margin-bottom">Company</h3>
                            <ul>
                                <li><a href="">About us</a></li>

                            </ul>
                        </div>
                        <div id="item-2" class="item">
                            <h3 class="margin-bottom">Contact</h3>
                            <ul>
                                <li><a href="">Help & Support</a></li>

                            </ul>
                        </div>
                        <div id="item-3" class="item">
                            <h3 class="margin-bottom">Legal</h3>
                            <ul>
                                <li><a href="">Terms & Conditions</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="LandingPage/js/app.js"></script>
    </body>
</html>
