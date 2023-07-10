<%-- 
    Document   : trackorder
    Created on : 27 Jun, 2022, 3:46:12 AM
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

        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <p>Track Orders</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end header -->

        <!-- end search arewa -->

        <!-- end breadcrumb section -->

        <!-- products -->
        <div class="product-section mt-150 mb-150">
            <div class="container">
                <%
                    String uid = session.getAttribute("uid").toString();
                    Connection con = SQLconnection.getconnection();
                    Statement st = con.createStatement();
                    Statement st1 = con.createStatement();
                    try {
                        ResultSet rs = st.executeQuery("Select * from useroders where uid='" + uid + "' order by id DESC");
                        while (rs.next()) {
                            String pid=rs.getString("pid");
                %>
                <table width="100%" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" style="font-family: Arial, Helvetica, sans-serif; line-height: 1;">
                    <tr>
                        <td valign="top" align="center">
                            <table class="table600" width="600" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">

                                <tr>
                                    <td valign="top" align="center">
                                        <table class="table600" width="600" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse; text-align: left;">
                                            <tr>
                                                <td valign="top" style="font-size: 18px; line-height: 1;">
                                                    <div>Dear <%=rs.getString("uname")%>, <span style="white-space: nowrap;">Thank You For Your Order!</span></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td valign="top" style="font-size: 18px; line-height: 1;">
                                                    <span>
                                                        Your Order ID is <a style="color: #ff00cc;" href="OrderDetail.jsp?oid=<%=rs.getString("oid")%>"><b><%=rs.getString("oid")%></b></a> &nbsp;&nbsp;&nbsp;&nbsp; <a style="color: #F89880;" href="">Order Status: <b><%=rs.getString("orderstatus")%></b></a>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" height="20" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td valign="top" height="20" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td valign="top" height="20" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="table95" width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
                                            <tr>
                                                <td class="order-list" valign="top">
                                                    <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
                                                        <thead>
                                                            <tr>
                                                                <td class="pr-name" width="43%" style="border: solid #e0e0e0; border-width: 1px 0; padding: 10px 0; vertical-align: top; color:#999; font-size:12px;">Item Name</td>
                                                                

                                                                <td class="pr-price" width="15%" style="border: solid #e0e0e0; border-width: 1px 0; padding: 10px 0; vertical-align: top; text-align: right; color:#999; font-size:12px;" align="right"></td>
                                                               
                                                                <td class="pr-qty" width="10%" style="border: solid #e0e0e0; border-width: 1px 0; padding: 10px 0; vertical-align: top; text-align: right; color:#999; font-size:12px;" align="right">Qty</td>
                                                                <td class="pr-amount" width="17%" style="border: solid #e0e0e0; border-width: 1px 0; padding: 10px 0; vertical-align: top; text-align: right; color:#999; font-size:12px;" align="right">Amount</td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="5" style="border-bottom: 1px solid #e0e0e0; padding: 5px 0 10px;" valign="top">
                                                                    <table class="order-list-item" width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse; font-size:13px; color:#333;">
                                                                        <tr>
                                                                            <td class="pr-name" width="43%" style="padding-top:10px; vertical-align: top; text-align: left" align="left" valign="top">
                                                                                <a href="" target="_blank" style="text-decoration:none;">
                                                                                    <img src="menupic.jsp?uid=<%=rs.getString("pid")%>" alt="" width="50" height="50" style="border: solid 1px #e0e0e0;" />
                                                                                    <span style="padding-top:4px; font-size: 11px; color: #f0c; text-decoration: underline; line-height: 50px; vertical-align: top;"><%=rs.getString("pname")%></span>
                                                                                </a>
                                                                            </td>
                                                                            <%
                                                                    ResultSet rs1 = st1.executeQuery("Select * from resmenu where id='" + pid + "'");
                                                                    while (rs1.next()) { %>
                                                                            <td width="15%" style="white-space:nowrap; text-align:right; padding-top:10px; vertical-align: top;" valign="top">
                                                                                <%=rs1.getString("price")%>
                                                                            </td>
                                                                             <%                                        }
                                                                    rs1.close();
                                                                %>
                                                                            <td width="10%" style="text-align:right; padding-top:10px; vertical-align: top;" valign="top">
                                                                                <%=rs.getString("quantity")%>
                                                                            </td>
                                                                            <td width="17%" style="text-align:right; padding-top:10px; vertical-align: top;" valign="top">
                                                                                <%=rs.getString("total")%>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <td colspan="5" style="padding: 10px 0 15px;" valign="top">
                                                                    <table class="order-list-subtotal" cellspacing="0" cellpadding="0" border="0" align="right" style="border-collapse: collapse; font-size:13px; color:#333; text-align:right;">
                                                                        <tr>
                                                                            <td style="padding-top:5px;" valign="top"><b>TOTAL:</b></td>
                                                                            <td class="subtotal-val" style="padding:5px 0 0 30px;" valign="top"><b>Rs <%=rs.getString("total")%></b></td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" bgcolor="#000" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td valign="top" height="25" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>





                                <tr>
                                    <td valign="top" align="center">
                                        <table class="table95" width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
                                            <tr>
                                                <td class="shipping-info" valign="top">
                                                    <table class="fullWidth" width="290" cellspacing="0" cellpadding="0" border="0" align="left" style="border-collapse: collapse; font-size:13px; line-height:1.5;color:#333;">
                                                        <tr>
                                                            <td valign="top"><b>Shipping address</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top" height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top">
                                                                <%=rs.getString("address")%>
                                                            </td>
                                                        </tr>
                                                    </table>

                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <%                                        }
                        rs.close();
                        con.close();
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }

                %>
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


