
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <title>Student logIn</title>
  <link href="styles/main.css" rel="stylesheet" type="text/css">
  <script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/source-sans-pro:n6:default.js" type="text/javascript"></script>

</head>

<body>

<div id="wrapper">
  <header id="top">
    <style="float:left;  height:80px;width:100px; margin-left:0px;margin-top:0px;">
    <h1>Online Examination System</h1>
    <nav id="mainnav">
      <ul>
        <li><a href="welcome.jsp" class="thispage">Home</a></li>

       
        <li><a href="register.jsp"> Create Account</a></li>
        <li><a href="index.jsp">Login</a></li>
      </ul>
    </nav>
  </header>
  <script type="text/javascript">
    function validateUsername(){
      var text = document.getElementById("username").value;
      if(text == ""){
        document.getElementById("errorusername").innerHTML = "Provide Username";
        document.getElementById("errorusername").style.color = "red";
      }
      else{
        document.getElementById("errorusername").innerHTML = "OK";
        document.getElementById("errorusername").style.color = "green";
      }
    }
    function validatePassword(){
      var text = document.getElementById("pass").value;
      if(text == ""){
        document.getElementById("errorpassword").innerHTML = "Provide Password";
        document.getElementById("errorpassword").style.color = "red";
      }
      else{
        document.getElementById("errorpassword").innerHTML = "OK";
        document.getElementById("errorpassword").style.color = "green";
      }
    }
  </script>
  <div id="hero">
    <article>
      


      <h3>Welcome Students!!! Please login</h3>

      <form action ="ValidateLogin" method ="POST">
        <table>
          <tr>
            <td>Username:</td>
            <td><input name ="username"type="text" id="username" placeholder="Enter Username" onblur="validateUsername()""></td>
            <td><label id="errorusername"></label></td>
          </tr>

          <tr>
            <td>Password:</td>
            <td><input name ="pass" type="password" id="pass" placeholder="Enter Password" onblur="validatePassword()""></td>
            <td><label id="errorpassword"></label></td>
          </tr>

          <tr>
            <td></td>
            <td><input type="submit" value="Login"></td>
            <td></td>
          </tr>

          <tr>

            <td colspan="2" align="center"><a href="register.jsp"><b style="color:blue; font-weight:bold;">REGISTER</b></a></td>
          </tr>

        </table>
       
      </form>

    </article>

    <div id ="auto_slide">
      <link rel="stylesheet" >
      <style>
        .mySlides {display:none;}
      </style>


      <div class="check" style="max-width:1000px; height:510px;padding-top: 10px;">

        <img class="mySlides" src="images/lelo.jpg"  style="width:130%; height:495px;">
        <img class="mySlides" src="images/exam5.jpg" style="width:130%; height:495px">

        <img class="mySlides" src="images/slide.jpg" style="width:130%;height:495px">
        <img class="mySlides" src="images/iiitg.jpg" style="width:130%;height:495px">

      </div>


      <script>
        var myIndex = 0;
        carousel();

        function carousel() {
          var i;
          var x = document.getElementsByClassName("mySlides");
          for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
          }
          myIndex++;
          if (myIndex > x.length) {myIndex = 1}
          x[myIndex-1].style.display = "block";
          setTimeout(carousel, 4000);
        }
      </script>
      
    </div>


  </div >
</div >

</div>
</body>
</html>
