<%-- 
    Document   : star
    Created on : 22 Jun, 2022, 11:04:36 PM
    Author     : Beast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>Notation</title>
 

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style-type: none;
  transition: ease 0.2s;
  font-family: Open Sans;
  text-decoration: none;
  font-size: 14px;
}

body {
  background: #f2f6ff;
}

.container {
  background: #f8faff;
  color: #4b537c;
  width: 100%;
  max-width: 450px;
  padding: 40px;
  border-radius: 15px;
  margin: 0 auto;
  margin-top: 50px;
  box-shadow: #dee8fe 0 10px 20px 5px;
  display: flex;
  flex-direction: column;
  gap: 15px;
}

.heading {
  font-size: 18px;
}

.para {
  font-weight: 600;
}

.feedback-msg textarea {
  margin-top: 5px;
  border: solid 2px #f2cd95;
  padding: 13px;
  border-radius: 7px;
  outline: none;
  font-size: 14px;
  color: black;
  font-weight: 500;
  letter-spacing: 1px;
  width: 100%;
  height: 80px;
  resize: none;
}

.agreement .checkbox {
  display: flex;
  gap: 5px;
  align-items: center;
  margin-bottom: 5px;
}
.agreement input {
  accent-color: #ff71a4;
}
.agreement a {
  color: #ff71a4;
  font-size: 12px;
  font-weight: 600;
}
.agreement label {
  font-size: 12px;
  font-weight: 600;
}

.buttons {
  display: flex;
  gap: 10px;
  justify-content: end;
}
.buttons input {
  background: white;
  color: #4b537c;
  width: 80px;
  padding: 10px;
  text-align: center;
  border-radius: 4px;
}
.buttons input:hover {
  opacity: 0.9;
}
.buttons input:nth-child(1) {
  background: #fe71a4;
  color: #f8faff;
}


.notation-text {
color: #000000;
font-size: 18px;
text-align: center;
margin: 18px;
}

.notation-block-star {
display: table;
margin: 0 auto;
width: inherit;
}


.notation-star {
background-image: url("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Empty_Star.svg/2000px-Empty_Star.svg.png");
background-repeat: no-repeat;
cursor: pointer;
display: table-cell;
float: right;
height: 20px;
width: 20px;
padding: 10 5px;
background-size: cover;
}


.notation-star:hover,
.notation-star:hover ~ .notation-star {
background-image: url("http://findicons.com/files/icons/1035/human_o2/128/bookmark_new.png");
}

.notation-star-selected {
background-image: url("http://findicons.com/files/icons/1035/human_o2/128/bookmark_new.png");
background-repeat: no-repeat;
cursor: pointer;
display: table-cell;
float: right;
height: 20px;
width: 20px;
padding: 10 5px;
background-size: cover;
}

.notation-star-selected  ~ .notation-star {
background-image: url("http://findicons.com/files/icons/1035/human_o2/128/bookmark_new.png");
}
</style>

       </head>
       
       <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

<div class="container">
  <h1 class="heading">Give feedback</h1>
  <p class="para">What do you think of the issue search experience within the project?</p>

  <div class="notation-text">Service Rating</div>


   <form method="get" action="voting.jsp">
   <div id="star5" class="notation-star" onClick="notation(this.id);"></div>
   <div id="star4" class="notation-star" onClick="notation(this.id);"></div>
   <div id="star3" class="notation-star" onClick="notation(this.id);"></div>
   <div id="star2" class="notation-star" onClick="notation(this.id);"></div>
   <div id="star1" class="notation-star" onClick="notation(this.id);"></div>
   <input type="hidden" id="notationNote" name="notation_note" value="0">

  <div class="feedback-msg">
    <p class="para">
      What are the main reasons for your rating?
    </p>
    <textarea name="feedback" id=""></textarea>
  </div>
   <br>
  <div class="agreement">
    <div class="checkbox">
      <input type="checkbox" name="" id="">
      <label for="">I may be contacted about this feedback <a href="#">Privacy Policy</a>.</label>
    </div>
  </div>

  <div class="buttons">
     <input type="submit" value="Submit">
  </div>
</form>
</div>
   <script type="text/javascript">
        function notation(starId) {

            var elements = document.getElementsByClassName("notation-star-selected");

            for (i = 0; i < elements.length; i++) {
                elements[i].className = "notation-star";
            }


            document.getElementById(starId).className = "notation-star-selected";


            document.getElementById("notationNote").value = starId.substr(4, 
                  4);

            var note = document.getElementById("notationNote").value = 
            starId.substr(4, 4);

            document.getElementById("vote").innerHTML = note.valueOf();



           }
        </script>

              </html>
