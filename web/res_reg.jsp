<%-- 
    Document   : res_reg
    Created on : 18 Jun, 2022, 4:10:13 AM
    Author     : Beast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Online Food Ordering System</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
        <link rel="stylesheet" href="style.css">

    </head>
    <body>
        <!-- partial:index.partial.html -->
    <body class="align">
        <h1 style="font-size: 60px;margin-top: 200px">Online Food Ordering System</h1>
        <div class="grid" style="margin-bottom: 200px ;width: 900px" >
            <form action="restaurants" method="POST" class="form login" enctype="multipart/form-data">

                <div class="form__field">
                    <input autocomplete="" id="login__username" type="text" name="resname" class="form__input" placeholder="Restaurant Name" required>
                </div>
               
                <div class="form__field">
                     <p style="color: orange"><strong>Restaurant<br>Photo</strong></p>
                    <input autocomplete="" id="login__username" type="file" name="resphoto" class="form__input" placeholder="Restaurant Name" required>
                </div>
                <div class="form__field">
                    <input autocomplete="username" id="login__username" type="text" name="mail" class="form__input" placeholder="Mail Id" required>
                </div>
                <div class="form__field">

                    <input autocomplete="username" id="login__username" type="text" name="phone" class="form__input" placeholder="Phone Number" required>
                </div>
                <div class="form__field">

                    <input autocomplete="username" id="login__username" type="text" name="address" class="form__input" placeholder="Address" required>
                </div>
                <div class="form__field">

                    <input autocomplete="username" id="login__username" type="text" name="city" class="form__input" placeholder="City" required>
                </div>

                <div class="form__field">

                    <input id="login__password" type="text" name="gst" class="form__input" placeholder="GST Number" required>
                </div>
                <div class="form__field">

                    <input autocomplete="Admin Name" id="login__username" type="text" name="username" class="form__input" placeholder="User Name" required>
                </div>
                <div class="form__field">

                    <input id="login__password" type="password" name="pass" class="form__input" placeholder="Password" required>
                </div>

                <div class="form__field">
                    <input type="submit" value="Register">
                </div>

            </form>

            <p class="text--center">Already a member? <a style="color: red" href="Reslog.jsp">Login</a> <svg class="icon">
                <use xlink:href="#icon-arrow-right"></use>
                </svg></p>

        </div>

        <svg xmlns="http://www.w3.org/2000/svg" class="icons">
    <symbol id="icon-arrow-right" viewBox="0 0 1792 1792">
        <path d="M1600 960q0 54-37 91l-651 651q-39 37-91 37-51 0-90-37l-75-75q-38-38-38-91t38-91l293-293H245q-52 0-84.5-37.5T128 1024V896q0-53 32.5-90.5T245 768h704L656 474q-38-36-38-90t38-90l75-75q38-38 90-38 53 0 91 38l651 651q37 35 37 90z" />
    </symbol>
    <symbol id="icon-lock" viewBox="0 0 1792 1792">
        <path d="M640 768h512V576q0-106-75-181t-181-75-181 75-75 181v192zm832 96v576q0 40-28 68t-68 28H416q-40 0-68-28t-28-68V864q0-40 28-68t68-28h32V576q0-184 132-316t316-132 316 132 132 316v192h32q40 0 68 28t28 68z" />
    </symbol>
    <symbol id="icon-user" viewBox="0 0 1792 1792">
        <path d="M1600 1405q0 120-73 189.5t-194 69.5H459q-121 0-194-69.5T192 1405q0-53 3.5-103.5t14-109T236 1084t43-97.5 62-81 85.5-53.5T538 832q9 0 42 21.5t74.5 48 108 48T896 971t133.5-21.5 108-48 74.5-48 42-21.5q61 0 111.5 20t85.5 53.5 62 81 43 97.5 26.5 108.5 14 109 3.5 103.5zm-320-893q0 159-112.5 271.5T896 896 624.5 783.5 512 512t112.5-271.5T896 128t271.5 112.5T1280 512z" />
    </symbol>
    </svg>

</body>
<!-- partial -->

</body>
</html>

