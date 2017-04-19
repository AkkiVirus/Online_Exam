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
        <li><a href="index.jsp" class="thispage">Home</a></li>

        
        <li><a href="register.jsp"> Create Account</a></li>
        <li><a href="index.jsp">Login</a></li>
      </ul>
    </nav>
  </header>

  <div align="center">
    <p>												 	<img src="IIITGLogo.jpg" width="182" height="170" alt=""/></p>
    <h3> <em>Welcome students</em></h3>
  </div>
  <div align = "center">
    <form action ="ValidateRegister" method ="POST">
      <table height="267">
        <tr>
          <td width="253" height="37">Username :
            <input name ="username" type="text" required="required" id="username" placeholder="username/rollno"></td>
          <td width="229">&nbsp;</td>
        </tr>

        <tr>
          <td height="30"> Password :
            <input name ="pass" type="password" required="required" id="pass" placeholder="password"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="30"> First Name :
            <input  name="firstName" type ="text" required="required" size="20"></td>
          <td>&nbsp;</td>
        </tr>

        <tr>
          

          <td> Last Name :
            <input name="lastName" type ="text" required="required" size="20" > <br></td>
        </tr>
        <tr>
          <td> Email - ID :
            <input name="email" type ="email" required="required" placeholder="abc@example.com" > </td>
        </tr>
       

        <tr>
          
          <td><input type="submit" value="Register"></td>
          <td width="10"></td>
        </tr>
      </table>
      <p>&nbsp;</p>
    </form>
  </div>
  <footer>
   
  </footer>
</div>
</body>
</html>
