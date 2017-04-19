<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <title>Online Examination System </title>
  <link href="styles/main.css" rel="stylesheet" type="text/css">
  <script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/source-sans-pro:n6:default.js" type="text/javascript"></script>

</head>

<body>

<div id="wrapper">
  <header id="top">
   
    <h1>Online Examination System</h1>
    <nav id="mainnav">
      <ul>
        <li><a href="welcome.jsp" class="thispage">Home</a></li>

       
        <li><a href="register.jsp"> Create Account</a></li>
        <li><a href="indexExaminer.jsp">Login</a></li>
      </ul>
    </nav>
  </header>

  <div align="center">
    <h3> <em>Welcome Examiners please fill all fields to register</em></h3>
  </div>
  <form action ="ValidateExaminerReg" method ="POST">
    <table>
      <tr>
        <td>Username:</td>
        <td><input type="text" id="username" name ="username"></td>
      </tr>

      <tr>
        <td>Password:</td>
        <td><input type="password" id="pass" name ="pass"></td>
      </tr>

      <tr><td>Subject :</td>
        <td>  <input type ="text"  name="sub1" size="20" > </td>

      
      </tr>
      <tr><td>Email Address :</td>
        <td> <input type ="email" name="email" > </td>
      </tr>
      

      <tr>
        <td></td>
        <td><input type="submit" value="Register"></td>
        <td></td>
      </tr>
    </table>

  </form>
</div>

</div>
</body>
</html>
