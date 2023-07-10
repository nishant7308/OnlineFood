<%-- 
    Document   : del_reg
    Created on : Nov 29, 2022, 2:04:22 PM
    Author     : Murthi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="OFD.Database.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- partial:index.partial.html -->
<!DOCTYPE html>
<html>
    <head>
        <title>Registration Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body{
                background-color: #F5F5F5;
                 overflow: scroll;
            }
            .head{
                position:absolute;
                top:0px;
                left: 0px;
                margin: 0px;
                text-align: center;
                background-color: #ff6600;
                width: 100%;
                color:white;
            }
            .content{
                position: relative;
                padding:18px;
                margin: 4px;
                top:100px;
                left: auto;
                width: auto;
                height: auto;
                border:2px solid #ff6600;
                border-radius: 25px;
                box-shadow: 3px 5px orange;
                background-color: white;
            }
            font{
                font-size: 24px;
                color: #ff6600;
            }
            form{
                font-size: 18px;
            }
            .content input[type="text"]{
                height: 30px;
                width: 450px;
                box-sizing: border-box;
                border:1px solid #ff6600;
                border-radius: 25px;
                text-align: center;
                font-size: 16px;
            }
            .content input[type="date"]{
                height: 30px;
                width: 450px;
                box-sizing: border-box;
                border:1px solid #ff6600;
                border-radius: 25px;
                text-align: center;
                font-size: 16px;
            }
            .content input[type="password"]{
                height: 30px;
                width: 450px;
                box-sizing: border-box;
                border:1px solid #ff6600;
                border-radius: 25px;
                text-align: center;
                font-size: 16px;
            }
            .content input[type="file"]{
                height: 30px;
                width: 450px;
                box-sizing: border-box;
                border:1px solid #ff6600;
                border-radius: 25px;
                text-align: center;
                font-size: 16px;
            }
            .content input::placeholder{
                color:#CCC;
                font-size: 18px;
            }
            textarea{
                font-size: 16px;
                width: 440px;
            }
            .content select{
                height: 30px;
                width: 450px;
                box-sizing: border-box;
                border:1px solid #ff6600;
                border-radius: 25px;
                text-align: center;
                font-size: 16px;
            }
            .content input[type="submit"]{
                font-size: 20px;
                text-align:center;
                float: center;
                padding: 8px;
                width: 120px;
                border:1px solid orange;
                border-radius: 20px;
                background-color:white;
                color: #ff6600;
                cursor: pointer;
            }
            .content input[type="reset"]{
                font-size: 20px;
                text-align:center;
                float: center;
                padding: 8px;
                border: 8px;
                width: 120px;
                border:1px solid orange ;
                border-radius: 20px;
                background-color: white;
                color: #ff6600;
                cursor: pointer;
            }
            .content input[type="submit"]:hover{
                color:white;
                background-color: #ff6600;
            }
            .content input[type="reset"]:hover{
                color:white;
                background-color: #ff6600;
            }
        </style>
    </head>
    <body>
        <div class="head">
            <h1>Delivery Agent</h1>
        </div>
        <div class="content">
            <font><b>Registration form</b></font><br><br>
            <center><form action="delreg" method="post" enctype="multipart/form-data">
                <b>Agent Name</b><br> <input type="text" name="aname"  placeholder="Agent name" required><br><br>
                <b>Agent Photo</b><br> <input type="file" name="apic"  placeholder="Agent Pic" required><br><br>
                <b>Father Name</b><br> <input type="text" name="afname"  placeholder="Father name" required><br><br>
                <b>Date of Birth</b><br> <input type="date" name="adob"  placeholder="DOB" required><br><br>

                <b>Gender :</b> <input type="radio" name="agender" value="Male" >Male<input type="radio" name="agender" value="Female">Female<br>
                <br>
                <b>Email</b><br> <input type="text" name="amail"  placeholder="Email" required><br><br>
                <b>Phone</b><br> <input type="text" name="aphone"  placeholder="Phone Number" required><br><br>
                <b>City</b> <br> 
                <select name="acity">
                    <optgroup label="Choose the city">
                        <%
                            Connection con = SQLconnection.getconnection();
                            Statement st = con.createStatement();
                            try {
                                ResultSet rs = st.executeQuery("Select * from restaurants GROUP BY city");
                                while (rs.next()) {

                        %>
                        <option value="<%=rs.getString("city")%>"><%=rs.getString("city")%></option>
                        <%                                        }
                                rs.close();
                                con.close();
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </optgroup>
                </select><br><br>
                <b>Password</b><br> <input type="password" name="apass"  placeholder="Password" required><br><br>
                <input type="submit" name="submit" value="Register">
                <input type="reset" name="reset" value="Cancel" onclick="myFunction()">
                <br>
                <br>
                Already Registered??<a href="DeliveryAgents.jsp"> Login</a>
                </form></center>
        </div>
        <script type="text/javascript">
            function myFunction() {
                alert("Registration Cancelled!");
            }
        </script>

    </body>
</html>