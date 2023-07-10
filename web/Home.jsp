
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
    
    <%
                if (request.getParameter("FeedAdded") != null) {%>
            <script>alert('Thanks for the feedback');</script>  
            <%}
            %>
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
        <!-- end breadcrumb section -->

        <!-- products -->
        <div class="product-section mt-150 mb-150">
            <div class="container">
                <div class="content">
      <div class="food-list">
    <h4>Top Picks</h4></br>
      </div> <div class="checkout">
      </div>
    <div class="row">
  <div class="col-md-4">
    <div class="thumbnail ">
      <a href="#">
        <img class="food-img" src="https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_366,h_240,c_fill/dwzp9esu8wryswomwvks" alt="007 Punjabi Dhaba" style="width:100%">
        </a>
        <div class="caption">
            <p class="food-name">Chicken Maharaja<br>Main Course<br>Rs 250</p><br>
           
       
        </div> 
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="#">
        <img src="https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_366,h_240,c_fill/x8w7cni3p5u1nuahfywj" alt="Aanandhas" style="width:100%">
         </a>
        <div class="caption">
          <p class="food-name">Chicken 007 Special Fried Rice & Noodle<br>Main Course<br>Rs 250</p><br>
        </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="#">
        <img src="https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_366,h_240,c_fill/fue8priulnnbbgze289v" alt="Oyalo" style="width:100%">
        </a>
        <div class="caption">
          <p class="food-name">Chicken Tandoori<br>Main Course<br>Rs 250</p><br>
        </div>
    </div>
  </div>
      <div class="col-md-4">
    <div class="thumbnail">
      <a href="#">
        <img src="https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_366,h_240,c_fill/zkw2pcfjlmrbih90hcar" alt="Sita Paani" style="width:100%">
         </a>
        <div class="caption">
          <p class="food-name">Barbeque Tikka<br>Main Course<br>Rs 250</p><br>
        </div>
    </div>
  </div>
      <div class="col-md-4">
    <div class="thumbnail">
      <a href="#">
        <img src="https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_366,h_240,c_fill/bf4ffljnqtiomgvp8ruj" alt="Boneless Chilli Chicken 65" style="width:100%">
        </a>
        <div class="caption">
          <p class="food-name">Boneless Chilli Chicken 65<br>Starter<br>Rs 250</p><br>
        </div>
    </div>
  </div>
      <div class="col-md-4">
    <div class="thumbnail">
      <a href="#">
        <img src="https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_366,h_240,c_fill/cvht2h0t9f1tlt3wwjwp" alt="Mutton Biryani" style="width:100%; height:100px">
        </a>
        <div class="caption">
          <p class="food-name">Mutton Biryani<br>Main Course<br>Rs 250</p><br>
        </div>
    </div>
  </div>
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
