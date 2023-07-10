<%-- 
    Document   : ResTrans
    Created on : 27 Jun, 2022, 4:20:20 AM
    Author     : Beast
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="OFD.Database.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Online Food Delivery System</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="Admin/vendors/feather/feather.css">
        <link rel="stylesheet" href="Admin/vendors/ti-icons/css/themify-icons.css">
        <link rel="stylesheet" href="Admin/vendors/css/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <link rel="stylesheet" href="Admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        <link rel="stylesheet" href="Admin/vendors/ti-icons/css/themify-icons.css">
        <link rel="stylesheet" type="text/css" href="Admin/js/select.dataTables.min.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="Admin/css/vertical-layout-light/style.css">
        <!-- endinject -->
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" >
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo mr-5" href="#"><img src="Admin/images/admin.svg" class="mr-2" alt="logo"/></a>
                    <a class="navbar-brand brand-logo-mini" href="#"><img src="Admin/images/admin.png" alt="logo"/></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="icon-menu"></span>
                    </button>
                    <ul class="navbar-nav mr-lg-2">
                        <li class="nav-item nav-search d-none d-lg-block">
                            <div class="input-group">
                                <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                                </div>
                                <center> <h2 style="color: #FF7F50; margin-left: 200px">Online Food Ordering System</h2></center>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                <i class="icon-lock"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                                <a class="dropdown-item" href="reslogout.jsp">
                                    <i class="ti-power-off text-primary"></i>
                                    Logout
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
                        <div class="container-fluid page-body-wrapper">
                <!-- partial -->
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar" >
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link active" href="ResHome.jsp">
                                <i class="icon-grid menu-icon"></i>
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="Add_Menu.jsp">
                                <i class="ti-user menu-icon"></i>
                                <span class="menu-title">Add Menu</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="MenuUpdate.jsp">
                                <i class="ti-user menu-icon"></i>
                                <span class="menu-title">Menu Update</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="ResOrders.jsp">
                                <i class="ti-user menu-icon"></i>
                                <span class="menu-title">Orders</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="ResTrans.jsp">
                                <i class="ti-money menu-icon"></i>
                                <span class="menu-title">Transactions</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="UserComplaints.jsp">
                                <i class="icon-mail menu-icon"></i>
                                <span class="menu-title">Complaints</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            <!-- partial -->
            <div class="main-panel" >
                    <div class="content-wrapper" style="background-color: #F89880">
                        <div class="row">
                            <div class="col-md-12 grid-margin">
                                <div class="row" >
                                    <div class="col-md-12 grid-margin stretch-card" >
                                        <div class="card" >
                                            <div class="card-body">
                                                <center><p class="card-title mb-0" style="font-size: 30px"><%=session.getAttribute("rname").toString()%> Orders</p></center>
                                                <br>
                                                <br>
                                                <div class="table-responsive" >
                                                    <table class="table table-striped table-borderless">
                                                        <thead>
                                                            <tr>
                                                                <th>Id</th>
                                                                <th>Order ID</th>
                                                                <th>Dish Name</th>
                                                                <th>Quantity</th>
                                                                <th>Order Status</th>
                                                                <th>Order Time</th>
                                                            </tr>  
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                String rid = session.getAttribute("rid").toString();
                                                                Connection con = SQLconnection.getconnection();
                                                                Statement st = con.createStatement();
                                                                try {
                                                                    ResultSet rs = st.executeQuery("Select * from useroders where resid='"+rid+"' order by id DESC");
                                                                    while (rs.next()) {
                                                            %>
                                                            <tr>
                                                                <td ><%=rs.getString("id")%></td>
                                                                <td ><%=rs.getString("oid")%></td>
                                                                <td ><%=rs.getString("pname")%></td>
                                                                <td ><%=rs.getString("quantity")%></td>
                                                                <%
                                                                    String statuss = rs.getString("orderstatus");
                                                                 System.out.println("check ticket:  " + statuss);
                                                                    String green = "Confirmed";
                                                                    String yellow = "Cancelled";
                                                                    String batch = null;
                                                                    if (statuss.equals("Confirmed") && green.equals("Confirmed")) {
                                                                        batch = "badge-success";

                                                                    } 
                                                                    else if (statuss.equals("Cancelled") && yellow.equals("Cancelled")) 
                                                                    {
                                                                        batch = "badge-danger";
                                                                    }
                                                                     else {
                                                                        batch = "badge-danger";
                                                                    }
                                                                %>
                                                                <td class="font-weight-medium"><div class="badge <%=batch%>"><%=rs.getString("orderstatus")%></div></td>
                                                                <td ><%=rs.getString("time")%></td>
                                                                <%                                        }
                                                                        rs.close();
                                                                        con.close();
                                                                    } catch (Exception ex) {
                                                                        ex.printStackTrace();
                                                                    }

                                                                %>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-primary text-center text-sm-left d-block d-sm-inline-block">Copyright © 2022 All rights reserved.</span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->

        <!-- plugins:js -->
        <script src="Admin/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script src="Admin/vendors/chart.js/Chart.min.js"></script>
        <script src="Admin/vendors/datatables.net/jquery.dataTables.js"></script>
        <script src="Admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
        <script src="Admin/js/dataTables.select.min.js"></script>
        <script src="Admin/js/select.dataTables.min.css"></script>

        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script src="Admin/js/off-canvas.js"></script>
        <script src="Admin/js/hoverable-collapse.js"></script>
        <script src="Admin/js/template.js"></script>
        <script src="Admin/js/settings.js"></script>
        <script src="Admin/js/todolist.js"></script>
        <script src="Admin/js/select2.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="Admin/js/dashboard.js"></script>
        <script src="Admin/js/Chart.roundedBarCharts.js"></script>
        <!-- End custom js for this page-->
    </body>
</html>


