
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <title>Faculty Login Page</title>
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

       
        <li><a href="examiner_register.jsp"> Create Account</a></li>
        <li><a href="indexExaminer.jsp">Login</a></li>
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
  <h2 align="center";color="blue">   Welcome on Examiner's Page</h2>
   <form action="LogOut" method="post" >
    <table align="center">
      <%@ page import="java.util.*" %>
      <%@ page import="bean.ExamDetail" %>
      <%@ page import ="bean.Data "%>
      <% //new java.util.Date() %>
      <tr><td></td>
        <div align="right";margin-right:200px;><input type ="submit" name ="take2" value="Log Out"></div></tr>

    </table>
  </form>
  

  <table width="501" align="center">
    <form action="Show_questions" method="post">
      <tr>
        <td colspan="2" align="center"><p><a href="add_question.jsp">*****Click here to Add Questions****</a></p>
          <p>&nbsp;</p></td>
      </tr>
      <tr>
        <td width="301"><p>
          To View All Questions  Click Below--&gt;
        </p>
          <p>
            <input type="submit" name="issue" value="view all questions">
          </p>
          <p>&nbsp; </p></td>
      </tr>
    </form>
    <form action="Show_questions" method="post">
      <tr>
        <td><p>To view Questions Submitted Click Below --&gt;</p>
          <p>
            <input type="submit" name="return" value="View Questions submitted">
          </p></td>
      </tr>
    </form>

  </table>
  <p>&nbsp;</p>
 
</div>
</body>
</html>
