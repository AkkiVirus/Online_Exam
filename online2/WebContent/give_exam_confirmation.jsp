<%@ page import="bean.ExamDetail" %>
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

       
      
      </ul>
    </nav>
  </header>

  <div align="center">
    <p>												 	

   
    </h2>
    
  </div>
  <%

    ExamDetail exd ;

    exd = (ExamDetail)(session.getAttribute("chosenExam"));
    session.setAttribute( "ExamDetails", exd );

  %>
  <div align="center">
    <form action ="Show_Exam_Ques" method ="POST">
      <table width="133">

        <tr>
          <td width="10"></td>
          <td width="97"><input type="submit" value="Start Exam"></td>
          <td width="10"></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>

    </form>
  </div>
 
</div>
</body>
</html>
