<%-- 
    Document   : usercart
    Created on : 25 Jun, 2022, 4:38:53 PM
    Author     : Beast
--%>

<%@page import="model.Customer"%>
<%@page import="controller.SQLControl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <!-- title -->
        <title>Cart</title>

        <!-- favicon -->
        <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- fontawesome -->
        <link rel="stylesheet" href="assets/css/all.min.css">
        <!-- bootstrap -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!-- owl carousel -->
        <link rel="stylesheet" href="assets/css/owl.carousel.css">
        <!-- magnific popup -->
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <!-- animate css -->
        <link rel="stylesheet" href="assets/css/animate.css">
        <!-- mean menu css -->
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <!-- main style -->
        <link rel="stylesheet" href="assets/css/main.css">
        <!-- responsive -->
        <link rel="stylesheet" href="assets/css/responsive.css">

    </head>
    <body>

        <!--PreLoader-->
        <div class="loader">
            <div class="loader-inner">
                <div class="circle"></div>
            </div>
        </div>
        <!--PreLoader Ends-->

        <!-- header -->
        <div class="top-header-area" id="sticker">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-sm-12 text-center">
                        <div class="main-menu-wrap">

                            <!-- menu start -->
                            <nav class="main-menu">
                                <ul>
                                    <li><a href="Home.jsp">Hungry</a></li>
                                    <li><a href="myprofile.jsp">My Account</a></li>
                                    <li><a href="trackorder.jsp">Order Tracking</a></li>
                                    <li><a href="orderhistory.jsp">Order History</a></li>
                                    <li><a href="logout.jsp">Logout</a></li>
                                    <li>
                                        <div class="header-icons">
                                            <a class="shopping-cart" href="usercart.jsp"><i class="fas fa-shopping-cart"></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </nav>

                            <div class="mobile-menu"></div>
                            <!-- menu end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end header -->
        <!-- end search arewa -->

        <!-- breadcrumb-section -->
        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <p>Fresh and Organic</p>
                            <h1>Cart</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end breadcrumb section -->

        <!-- cart -->
        <div class="cart-section mt-150 mb-150">
            <div class="container">
                <form action="ShoppingCardServlet" id="" method="POST">
                    <div class="row">
                        <div class="col-md-12">
                            
                            <div class="cart-table-wrap">
                                <table class="cart-table">
                                    <thead class="cart-table-head">
                                        <tr class="table-head-row">
                                            <th class="product-remove"></th>
                                            <th class="product-image">Product Image</th>
                                            <th class="product-name">Name</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-total">Price</th>
                                        </tr>
                                    </thead>
                                    
                                        <%

                                            SQLControl control = new SQLControl();
                                            ArrayList<Customer> arrCus = control.selectAllCustomer();
                                            
                                        %>
                                        <%
                                            int totalOrder = 0;
                                            HttpSession newSession = request.getSession();
                                            String res =null;
                                            if (newSession.getAttribute("cart") != null) {
                                                String resid = session.getAttribute("rid").toString();
                                                String acity = session.getAttribute("acity").toString();
                                                res=resid;
                                                String price = request.getParameter("price");
                                                String uid = session.getAttribute("uid").toString();
                                                String uname = session.getAttribute("uname").toString();
                                                String uphone = session.getAttribute("uphone").toString();
                                                %>
                                                 <a href="res_menu.jsp?id=<%=resid%>&city=<%=acity%>" class="bordered-btn" style="color: black">Back to Menu</a>
                                                 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="clearcart.jsp" class="bordered-btn" style="color: black">Clear Cart</a>
                                                <%
                                                ArrayList<Cart> arrC = (ArrayList<Cart>) newSession.getAttribute("cart");
                                                for (int i = 0; i < arrC.size(); i++) {
                                                    totalOrder += (arrC.get(i).getQuantity() * arrC.get(i).getpPrice());
                                        %> 
                                       
                                <tbody>
                                        <tr class="table-body-row">
                                            <td class="product-remove"><a href="#"><i class="far fa-window-close"></i></a></td>
                                            <td class="product-image"><img src="menupic.jsp?uid=<%= arrC.get(i).getpID()%>" alt=""></td>
                                            <td class="product-name"><%= arrC.get(i).getpName()%></td>
                                            <td class="product-quantity"><%= arrC.get(i).getQuantity()%></td>
                                            <td class="product-total">Rs <%= arrC.get(i).getpPrice()%></td>
                                        </tr>
                                    <input type="hidden" name="txtMethod" value="Cash" />
                                    <input type="hidden" name="slCustomer" value="<%=uid%>" />
                                    <input type="hidden" name="price" value="<%=price%>" />
                                    <input type="hidden" name="acity" value="<%=acity%>" />
                                    <input type="hidden" name="uname" value="<%=uname%>" required="" />
                                    <input type="hidden" name="uid" value="<%=uid%>" />
                                    <input type="hidden" name="uphone" value="<%=uphone%>" />
                                    <input type="hidden" name="total" value="<%=totalOrder+20%>" />
                                    <input type="hidden" name="resid" value="<%=resid%>" />

                                    <%      }
                                    } else {
                                    %>
                                    <h1>Your Cart is Empty</h1>
                                    <%
                                        }

                                    %>
                                    </tbody>
                                </table>
                            </div>
                                    <br>
                                    <br>
                                    <br>
                            <div class="total-section">
                                <table class="total-table">
                                    <thead class="total-table-head">
                                        <tr class="table-total-row">
                                            <th>Total</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="total-data">
                                            <td><strong>Total: </strong></td>
                                            <td>Rs <%= totalOrder%> + 20 Service Charge</td>
                                        </tr>
                                    </tbody>
                                </table>
                                        <div class="contact-from-section"  style="margin-left: 500px;margin-top: 50px">
                                    <div class="contact-form">
                                        <h3>Delivery Address</h3>
                                        <p>
                                            <input type="text" placeholder="Door Number" name="dno" id="name" required=""><br><br>
                                            <input type="text" placeholder="Street Name" name="street" id="email" required=""><br><br>
                                            <input type="text" placeholder="LandMark" name="landmark" id="subject" required=""><br>
                                        </p>
                                        <p><input type="submit" value="Submit"> &nbsp;&nbsp;</p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- end cart -->

        <!-- logo carousel -->
        
        <!-- end footer -->

        <!-- copyright -->
         <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <p>Copyrights &copy; 2022,  All Rights Reserved.</p>
                    </div>
                    <div class="col-lg-6 text-right col-md-12">
                        <div class="social-icons">
                            <ul>
                                <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end copyright -->

        <!-- jquery -->
        <script src="assets/js/jquery-1.11.3.min.js"></script>
        <!-- bootstrap -->
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <!-- count down -->
        <script src="assets/js/jquery.countdown.js"></script>
        <!-- isotope -->
        <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
        <!-- waypoints -->
        <script src="assets/js/waypoints.js"></script>
        <!-- owl carousel -->
        <script src="assets/js/owl.carousel.min.js"></script>
        <!-- magnific popup -->
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <!-- mean menu -->
        <script src="assets/js/jquery.meanmenu.min.js"></script>
        <!-- sticker js -->
        <script src="assets/js/sticker.js"></script>
        <!-- main js -->
        <script src="assets/js/main.js"></script>

    </body>
</html>
