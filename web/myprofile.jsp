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
            .form {
                background: rgba(19, 35, 47, 0.9);
                padding: 40px;
                max-width: 600px;
                margin: 40px auto;
                border-radius: 4px;
                box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
            }

            .tab-group {
                list-style: none;
                padding: 0;
                margin: 0 0 40px 0;
            }
            .tab-group:after {
                content: "";
                display: table;
                clear: both;
            }
            .tab-group li a {
                display: block;
                text-decoration: none;
                padding: 15px;
                background: rgba(160, 179, 176, 0.25);
                color: #a0b3b0;
                font-size: 20px;
                float: left;
                width: 50%;
                text-align: center;
                cursor: pointer;
                transition: .5s ease;
            }
            .tab-group li a:hover {
                background: #f89827;
                color: #ffffff;
            }
            .tab-group .active a {
                background: #ff6600;
                color: #ffffff;
            }

            .tab-content > div:last-child {
                display: none;
            }

            h1 {
                text-align: center;
                color: #ffffff;
                font-weight: 300;
                margin: 0 0 40px;
            }

            label {
                position: absolute;
                transform: translateY(6px);
                left: 13px;
                color: rgba(255, 255, 255, 0.5);
                transition: all 0.25s ease;
                -webkit-backface-visibility: hidden;
                pointer-events: none;
                font-size: 22px;
            }
            label .req {
                margin: 2px;
                color: #ff6600;
            }

            label.active {
                transform: translateY(50px);
                left: 2px;
                font-size: 14px;
            }
            label.active .req {
                opacity: 0;
            }

            label.highlight {
                color: #ffffff;
            }

            input, textarea {
                font-size: 22px;
                display: block;
                width: 100%;
                height: 100%;
                padding: 5px 10px;
                background: none;
                background-image: none;
                border: 1px solid #a0b3b0;
                color: #ffffff;
                border-radius: 0;
                transition: border-color .25s ease, box-shadow .25s ease;
            }
            input:focus, textarea:focus {
                outline: 0;
                border-color: #ff6600;
            }

            textarea {
                border: 2px solid #a0b3b0;
                resize: vertical;
            }

            .field-wrap {
                position: relative;
                margin-bottom: 40px;
            }

            .top-row:after {
                content: "";
                display: table;
                clear: both;
            }
            .top-row > div {
                float: left;
                width: 48%;
                margin-right: 4%;
            }
            .top-row > div:last-child {
                margin: 0;
            }

            .button {
                border: 0;
                outline: none;
                border-radius: 0;
                padding: 15px 0;
                font-size: 2rem;
                font-weight: 600;
                text-transform: uppercase;
                letter-spacing: .1em;
                background: #ff6600;
                color: #ffffff;
                transition: all 0.5s ease;
                -webkit-appearance: none;
            }
            .button:hover, .button:focus {
                background: #f89827;
            }

            .button-block {
                display: block;
                width: 100%;
            }

            .forgot {
                margin-top: -20px;
                text-align: right;
            }
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
                            <p>User Profile</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end breadcrumb section -->
        <%
            String uid = session.getAttribute("uid").toString();
            Connection con = SQLconnection.getconnection();
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("Select * from users where id='" + uid + "'");
            rs.next();
            System.out.println("className.methodName() Pass--" + rs.getString("pass"));
            System.out.println("className.methodName() Pass length" + rs.getString("pass").length());
        %>
        <!-- products -->
        <div class="product-section mt-150 mb-150">
            <div class="container">
                <div class="form">

                    <ul class="tab-group">
                        <h3 class="tab active" style="color: white">Profile Update</h3>
                        <li class="tab"></li>
                    </ul>

                    <div class="tab-content">
                        <div id="signup">   
                            <form action="user_update.jsp" method="post">
                                <div class="field-wrap">
                                    <label>
                                        Name<span class="req">*</span>
                                    </label><br><br>
                                    <input type="text"  value="<%=rs.getString("name")%>" required="" readonly="" autocomplete="off"/>
                                </div>

                                <div class="field-wrap">
                                    <label>
                                        Email Address<span class="req">*</span>
                                    </label><br><br>
                                    <input type="email" name="mail" value="<%=rs.getString("mailid")%>" required autocomplete="off"/>
                                </div>
                                <div class="field-wrap">
                                    <label>
                                        Phone<span class="req">*</span>
                                    </label><br><br>
                                    <input type="text" name="phone" value="<%=rs.getString("phone")%>" required autocomplete="off"/>
                                </div>

                                <div class="field-wrap">
                                    <label>
                                        Update Password<span class="req">*</span>
                                    </label>
                                    <br><br>
                                    <input type="password" name="pass" value="<%=rs.getString("pass")%>"required="" id="myInput" autocomplete="off"/> <br>
                                    <a onclick="myFunction()" style="color: white">Show Password</a>

                                </div>

                                <button type="submit" class="button button-block"/>Update</button>
                            </form>

                        </div>

                        <div id="login">   

                        </div>

                    </div><!-- tab-content -->

                </div> <!-- /form -->
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
        <script>
            function myFunction() {
                var x = document.getElementById("myInput");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }
        </script>

    </body>
</html>
