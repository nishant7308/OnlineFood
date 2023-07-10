<%-- 
    Document   : res_menu
    Created on : 25 Jun, 2022, 11:46:27 AM
    Author     : Beast
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="controller.SQLControl"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="OFD.Database.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <!-- title -->
        <title>Shop</title>

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
        <style>
            .dropbtn {
                background-color: #FF7F50;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }

            .dropbtn:hover, .dropbtn:focus {
                background-color: #FF7F50;
            }

            #myInput {
                box-sizing: border-box;
                background-image: url('searchicon.png');
                background-position: 14px 12px;
                background-repeat: no-repeat;
                font-size: 16px;
                padding: 14px 20px 12px 45px;
                border: none;
                border-bottom: 1px solid #ddd;
            }

            #myInput:focus {outline: 3px solid #ddd;}

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f6f6f6;
                min-width: 230px;
                overflow: auto;
                border: 1px solid #ddd;
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown a:hover {background-color: #FF7F50;}

            .show {display: block;}
        </style>
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
                            <p>Restaurant Menu</p> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%            String id = request.getParameter("id");
                   String city = request.getParameter("city");

            SQLControl control = new SQLControl();
            ArrayList<Product> arrP = new ArrayList<Product>();
            arrP = control.selectAllProduct(id);

        %>

        <!-- end breadcrumb section -->

        <!-- products -->
        <div class="product-section mt-150 mb-150">
            <div class="container">
                <div class="container hotel-list">
                    <h4>Menu Details</h4></br>
                    <div class="row">
                        <%  if (arrP != null) {
                                for (int i = 0; i < arrP.size(); i++) {
                        %>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img class="hotel-img"src="menupic.jsp?uid=<%= arrP.get(i).getpId()%>" alt="<%= arrP.get(i).getpName()%>" style="width:250px;height: 200px">
                                </a>
                                <div class="caption">
                                    <h3><%= arrP.get(i).getpName()%></h3>
                                    <p class="product-price"><span>1 Quantity</span> RS <%= arrP.get(i).getpPrice()%> </p>
                                    <form action="ProductServlet" method="post"><label>Quantity</label>
                                        <input type="number" name="quantity" required="">
                                        <input type="hidden" name="id" value="<%=arrP.get(i).getpId()%>" >
                                        <input type="hidden" name="resid" value="<%=id%>" >
                                        <input type="hidden" name="city" value="<%=city%>" >
                                        <input type="hidden" name="price" value="<%= arrP.get(i).getpPrice()%>" >
                                        <button type="submit" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                                    </form>
                                </div> 
                            </div>
                        </div>
                        <% }
                                     }%>

                    </div>
                </div>
            </div>
        </div>
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
        <script>
                                        /* When the user clicks on the button,
                                         toggle between hiding and showing the dropdown content */
                                        function myFunction() {
                                            document.getElementById("myDropdown").classList.toggle("show");
                                        }

                                        function filterFunction() {
                                            var input, filter, ul, li, a, i;
                                            input = document.getElementById("myInput");
                                            filter = input.value.toUpperCase();
                                            div = document.getElementById("myDropdown");
                                            a = div.getElementsByTagName("a");
                                            for (i = 0; i < a.length; i++) {
                                                txtValue = a[i].textContent || a[i].innerText;
                                                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                                                    a[i].style.display = "";
                                                } else {
                                                    a[i].style.display = "none";
                                                }
                                            }
                                        }
        </script>

    </body>
</html>
