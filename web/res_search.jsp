<%-- 
    Document   : Home
    Created on : 17 Jun, 2022, 10:19:42 PM
    Author     : Beast
--%>

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
                                    <li><a href="myprofile.jsp">My Account</a></li>
                                    <li><a href="trackorder.jsp">Order Tracking</a></li>
                                    <li><a href="offers.jsp">Offers</a></li>
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
                            <div class="dropdown">
                                <button onclick="myFunction()" class="dropbtn">Search City</button>
                                <div id="myDropdown" class="dropdown-content">
                                    <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
                                    <%
                                        Connection con = SQLconnection.getconnection();
                                        Statement st = con.createStatement();
                                        try {
                                            ResultSet rs = st.executeQuery("Select * from restaurants GROUP BY city");
                                            while (rs.next()) {

                                    %>
                                    <a href="res_search.jsp?keyword=<%=rs.getString("city")%>"><%=rs.getString("city")%></a>
                                    <%                                        }
                                            rs.close();
                                            con.close();
                                        } catch (Exception ex) {
                                            ex.printStackTrace();
                                        }

                                    %>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%  String keyword = request.getParameter("keyword");%>
        <!-- end breadcrumb section -->

        <!-- products -->
        <div class="product-section mt-150 mb-150">
            <div class="container">
                <div class="container hotel-list">
                    <h4>Restaurants in <%=keyword%></h4></br>
                    <div class="row">
                        <%
                            Connection conn = SQLconnection.getconnection();
                            Statement st1 = conn.createStatement();
                            try {
                                ResultSet rs1 = st1.executeQuery("Select * from restaurants where city='" + keyword + "'");
                                while (rs1.next()) {

                        %>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <a href="res_menu.jsp?id=<%=rs1.getString("id")%>&city=<%=rs1.getString("city")%>">
                                    <img class="hotel-img"src="respic.jsp?uid=<%=rs1.getString("id")%>" alt="<%=rs1.getString("resname")%>" style="width:250px;height: 200px">
                                </a>
                                <div class="caption">
                                    <p class="hotel-name"><%=rs1.getString("resname")%></p>
                                    <p><%=rs1.getString("address")%></p>
                                </div> 
                            </div>
                        </div>
                        <%                                        }
                                rs1.close();
                                conn.close();
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>

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
